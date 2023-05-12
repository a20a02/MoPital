import 'package:flutter/material.dart';
import 'package:mopital_app/constants.dart';
import 'package:mopital_app/widget/inputfield.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: darkGreen,
              radius: 60,
            ),
            InputField(
              title: 'Name',
              color: lightOrange,
              underlinecolor: Colors.black,
              hight: 45,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 32),
            InputField(
                title: 'Email',
                color: lightOrange,
                underlinecolor: Colors.black,
                hight: 45,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 32),
            InputField(
              title: 'Phone',
              color: lightOrange,
              underlinecolor: Colors.black,
              hight: 45,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
