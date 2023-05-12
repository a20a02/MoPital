import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../model/sleepingmodel.dart';
import '../../widget/categories_appbar.dart';
import '../../widget/cards/sleeping_card.dart';

class Sleeping extends StatelessWidget {
  const Sleeping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: categoriesAppbar(context, 'Sleeping'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 48, bottom: 32, right: 32, left: 32),
              child: Text(
                "Here are some videos that use certain frequencies to make your baby sleep",
                style: smallFont,
              ),
            ),
            ...sheepingData
                .map(
                  (sheepingcard) => Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: SleepingCard(
                      color: sheepingcard.colorofcard,
                      videotitle: sheepingcard.videotitle,
                      channelname: sheepingcard.channelname,
                      videoUrl: sheepingcard.videoUrl,
                      videoimage: sheepingcard.videoimage,
                      views: sheepingcard.views,
                      likes: sheepingcard.likes,
                      comments: sheepingcard.comments,
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
