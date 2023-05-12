import 'package:flutter/material.dart';
import 'package:mopital_app/model/categorymodel.dart';
import '../../widget/cards/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
      ),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.height * 0.4,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.25,
        ),
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(
              right: 12,
              left: 12,
            ),
            child: CategoryCard(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
