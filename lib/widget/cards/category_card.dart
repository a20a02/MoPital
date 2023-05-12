import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import 'package:mopital_app/model/categorymodel.dart';

class CategoryCard extends StatelessWidget {
  final int index;

  const CategoryCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(32),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => categories[index].page,
            ));
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(2, 4))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: SvgPicture.asset(
                categories[index].imageURL,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  (index == 0 || index == 3 || index == 4)
                      ? darkGreen
                      : lightOrange,
                  BlendMode.modulate,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            categories[index].name,
            style: middleFont,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
