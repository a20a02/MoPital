import 'package:flutter/material.dart';
import 'package:mopital_app/widget/categories_appbar.dart';
import 'package:mopital_app/widget/cards/centers_card.dart';
import '../../constants.dart';
import '../../model/centersmodel.dart';

class MedicalCenter extends StatelessWidget {
  const MedicalCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: categoriesAppbar(context, 'Medical Center'),
      body: SingleChildScrollView(
        child: Column(
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
                "Here are some hospitals and health centers that provide health and social care for your baby",
                style: smallFont,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 16,
                right: 32,
                left: 32,
              ),
              child: Text(
                "Hospitals and Health Centers",
                style: middleFont,
              ),
            ),
            ...hospitalhealthCenters
                .map(
                  (hospital) => Padding(
                    padding: const EdgeInsets.only(bottom: 26),
                    child: CentersCard(
                      brandname: hospital.brandname,
                      brandimage: hospital.brandimage,
                      brandlocation: hospital.brandlocation,
                      brandtype: hospital.brandtype,
                      brandlocationURl: hospital.brandlocationURl,
                      color: hospital.color,
                      icon: hospital.icon,
                    ),
                  ),
                )
                .toList(),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 16,
                right: 32,
                left: 32,
              ),
              child: Text(
                "Social Care Centers",
                style: middleFont,
              ),
            ),
            ...socialcareCenters
                .map(
                  (socialcare) => Padding(
                    padding: const EdgeInsets.only(bottom: 26),
                    child: CentersCard(
                      brandname: socialcare.brandname,
                      brandimage: socialcare.brandimage,
                      brandlocation: socialcare.brandlocation,
                      brandtype: socialcare.brandtype,
                      brandlocationURl: socialcare.brandlocationURl,
                      color: socialcare.color,
                      icon: socialcare.icon,
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
