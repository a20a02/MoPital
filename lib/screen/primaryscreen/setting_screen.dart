import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mopital_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String uri = "https://youtu.be/OmDyIsKQk8g";
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'About Us',
            style: middleFont,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              "We MoPital application, help mothers in this application to facilitate their lives in raising their young children through health and social information and the needs for children's supplies from shopping centers and others.",
              style: smallFont,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Contact Us',
            style: middleFont,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              """
FaceBook : MoPital
Instagram : @MoPital
YouTube : MoPitan Channel""",
              style: smallFont,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'How To Use App',
            style: middleFont,
          ),
          Container(
            height: 130,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This video will show you how to use the app',
                  style: smallFont,
                ),
                TextButton(
                  onPressed: () async {
                    Uri url = Uri.parse(uri);
                    if (!await canLaunchUrl(url)) {
                      !await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    uri,
                    style: GoogleFonts.sortsMillGoudy(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
