import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class CentersCard extends StatelessWidget {
  final String brandname;
  final String brandimage;
  final String brandlocation;
  final String brandtype;
  final String brandlocationURl;
  final Color color;
  final IconData icon;
  const CentersCard({
    super.key,
    required this.brandname,
    required this.brandimage,
    required this.brandlocation,
    required this.brandtype,
    required this.brandlocationURl,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    void openGoogleMap() async {
      final String uri = brandlocationURl;
      Uri url = Uri.parse(uri);
      if (!await canLaunchUrl(url)) {
        !await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      padding: const EdgeInsets.only(left: 24, top: 14, right: 8),
      height: 120,
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
        borderRadius: BorderRadius.circular(16),
      ),
      child: GestureDetector(
        onTap: openGoogleMap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                brandimage,
                fit: BoxFit.cover,
                width: 80,
                height: 90,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    brandname,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: smallFont,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          brandlocation,
                          style: moreSmallFont,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        icon,
                        size: 20,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          brandtype,
                          style: moreSmallFont,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.grey.shade300,
                        size: 16,
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
