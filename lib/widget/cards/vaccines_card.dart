import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class VaccinesCards extends StatelessWidget {
  final String nameofvaccinc;
  final String age;
  final String vaccinationdate;
  final String nextvaccinationdate;
  final Color color;

  const VaccinesCards({
    super.key,
    required this.nameofvaccinc,
    required this.age,
    required this.vaccinationdate,
    required this.nextvaccinationdate,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32, right: 32, left: 32),
      height: MediaQuery.of(context).size.height * 0.327,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name of Vaccinc',
                  style: middleFont,
                ),
                const SizedBox(height: 4),
                Text(
                  nameofvaccinc,
                  style: GoogleFonts.sortsMillGoudy(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'Age at Vaccination',
                  style: middleFont,
                ),
                const SizedBox(height: 4),
                Text(
                  age,
                  style: GoogleFonts.sortsMillGoudy(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'Vaccination Date',
                  style: middleFont,
                ),
                const SizedBox(height: 4),
                Text(
                  vaccinationdate,
                  style: GoogleFonts.sortsMillGoudy(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'Next Vaccination Date',
                  style: middleFont,
                ),
                const SizedBox(height: 4),
                Text(
                  nextvaccinationdate,
                  style: GoogleFonts.sortsMillGoudy(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              padding: const EdgeInsets.only(
                right: 24,
                top: 8,
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_on,
                color: Colors.green,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
