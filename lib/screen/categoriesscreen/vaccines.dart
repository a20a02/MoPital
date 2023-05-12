import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mopital_app/provider/vaccinc_provider.dart';
import 'package:mopital_app/widget/categories_appbar.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import '../../widget/bottom_sheet.dart';
import '../../widget/cards/vaccines_card.dart';

class Vaccines extends StatefulWidget {
  const Vaccines({super.key});

  @override
  State<Vaccines> createState() => _VaccinesState();
}

class _VaccinesState extends State<Vaccines> {
  late VaccincProvider myProvider;

  List<Color> colors = [
    darkGreen,
    darkOrange,
    lightGreen,
    lightOrange,
  ];

  @override
  void initState() {
    super.initState();
    myProvider = Provider.of<VaccincProvider>(context, listen: false);
    myProvider.getData();
  }

  @override
  Widget build(BuildContext context) {
    //print(vaccinces.length);
    return Scaffold(
      floatingActionButton: Align(
        alignment: const Alignment(1, 0.95),
        child: FloatingActionButton(
          backgroundColor: darkGreen,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: ((context) {
                return const CustomBottomSheet();
              }),
            );
          },
          child: const Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: categoriesAppbar(context, 'Vaccines'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 48,
              bottom: 32,
              right: 32,
              left: 32,
            ),
            child: Text(
              "Here you will find the list of vaccinations for your child with details of the vaccine and its timing",
              style: smallFont,
            ),
          ),
          Consumer<VaccincProvider>(builder: (context, vaccincProvider, child) {
            return Expanded(
              child: (myProvider.vaccinces.isNotEmpty)
                  ? ListView.builder(
                      itemCount: myProvider.vaccinces.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: Key(
                            myProvider.vaccinces[index]['ID'].toString(),
                          ),
                          onDismissed: (direction) {
                            myProvider
                                .deletData(myProvider.vaccinces[index]['ID']);
                          },
                          child: VaccinesCards(
                            nameofvaccinc: myProvider.vaccinces[index]['Name'],
                            age: myProvider.vaccinces[index]['Age'],
                            vaccinationdate: myProvider.vaccinces[index]
                                ['VaccinationDate'],
                            nextvaccinationdate: myProvider.vaccinces[index]
                                ['NextVaccinationDate'],
                            color: colors[Random().nextInt(3)],
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'You have not added any vaccine',
                        style: middleFont,
                      ),
                    ),
            );
          }),
        ],
      ),
    );
  }
}
