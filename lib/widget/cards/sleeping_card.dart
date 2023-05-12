import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class SleepingCard extends StatelessWidget {
  final String videotitle;
  final String channelname;
  final String videoUrl;
  final String videoimage;
  final String views;
  final String likes;
  final String comments;
  final Color color;
  const SleepingCard({
    super.key,
    required this.color,
    required this.videotitle,
    required this.channelname,
    required this.videoUrl,
    required this.videoimage,
    required this.views,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    void openYoutube() async {
      final String uri = videoUrl;
      Uri url = Uri.parse(uri);
      if (!await canLaunchUrl(url)) {
        !await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      padding: const EdgeInsets.only(left: 24, top: 28, right: 8),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: GestureDetector(
        onTap: openYoutube,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                videoimage,
                fit: BoxFit.cover,
                width: 110,
                height: 110,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videotitle,
                    style: GoogleFonts.sortsMillGoudy(fontSize: 14),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        AntDesign.youtube,
                        size: 20,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        channelname,
                        style: moreSmallFont,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        views,
                        style: wightmoreSmallFont,
                      ),
                      const SizedBox(width: 14),
                      Text(
                        likes,
                        style: wightmoreSmallFont,
                      ),
                      const SizedBox(width: 14),
                      Text(
                        comments,
                        style: wightmoreSmallFont,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
