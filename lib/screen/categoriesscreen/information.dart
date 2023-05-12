import 'package:flutter/material.dart';
import 'package:mopital_app/constants.dart';
import 'package:mopital_app/widget/categories_appbar.dart';
import '../../widget/inputfield.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: categoriesAppbar(context, 'Information'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Here, Enter your child's information to help remember it when needed",
                style: smallFont,
              ),
              const SizedBox(height: 32),
              InputField(
                title: 'Age',
                underlinecolor: Colors.white,
                color: darkGreen,
                hight: 35,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 32),
              InputField(
                title: 'Wight',
                underlinecolor: Colors.white,
                color: darkGreen,
                hight: 35,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 32),
              InputField(
                title: 'Hight',
                underlinecolor: Colors.white,
                color: darkGreen,
                hight: 35,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 32),
              InputField(
                title: 'Blood Type',
                underlinecolor: Colors.white,
                color: darkGreen,
                hight: 35,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 32),
              InputField(
                title: 'Teeth',
                underlinecolor: Colors.white,
                color: darkGreen,
                hight: 35,
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
