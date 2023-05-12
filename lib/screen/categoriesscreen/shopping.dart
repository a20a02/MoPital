import 'package:flutter/material.dart';
import 'package:mopital_app/model/centersmodel.dart';
import '../../constants.dart';
import '../../widget/categories_appbar.dart';
import '../../widget/cards/centers_card.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: categoriesAppbar(context, 'Shopping'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 48, bottom: 32, right: 32, left: 32),
              child: Text(
                "Here are some shopping centers for the products your child needs, including clothes, furniture, toys and other supplies",
                style: smallFont,
              ),
            ),
            ...shoppingData
                .map((shop) => Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: CentersCard(
                        brandname: shop.brandname,
                        brandimage: shop.brandimage,
                        brandlocation: shop.brandlocation,
                        brandtype: shop.brandtype,
                        brandlocationURl: shop.brandlocationURl,
                        color: shop.color,
                        icon: shop.icon,
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
