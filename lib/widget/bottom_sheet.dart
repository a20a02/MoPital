import 'package:flutter/material.dart';
import 'package:mopital_app/provider/vaccinc_provider.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../database/database_helper.dart';
import 'buttom.dart';
import 'inputfield.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController vaccinationDateController = TextEditingController();
    TextEditingController nextVaccinationDateController =
        TextEditingController();

    return Consumer<VaccincProvider>(
        builder: (context, vaccinesProvider, child) {
      return Container(
        padding: EdgeInsets.only(
          top: 50,
          left: 32,
          right: 32,
          bottom: MediaQuery.of(context).viewInsets.bottom + 50,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputField(
                title: 'Enter Your Vaccinc Name',
                color: lightGreen,
                hight: 40,
                underlinecolor: Colors.black,
                controller: nameController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              InputField(
                title: 'Enter The Age at Vaccination',
                color: lightGreen,
                hight: 40,
                underlinecolor: Colors.black,
                controller: ageController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              InputField(
                title: 'Enter Vaccination Date',
                color: lightGreen,
                hight: 40,
                underlinecolor: Colors.black,
                controller: vaccinationDateController,
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 16),
              InputField(
                title: 'Enter Next Vaccination Date',
                color: lightGreen,
                hight: 40,
                underlinecolor: Colors.black,
                controller: nextVaccinationDateController,
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 16),
              MyButtom(
                text: "Save",
                color: darkOrange,
                onPressed: () async {
                  await DataBase.createData(
                    name: nameController.text,
                    age: ageController.text,
                    vaccinationDate: vaccinationDateController.text,
                    nextVaccinationDate: nextVaccinationDateController.text,
                  );
                  vaccinesProvider.getData();
                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
