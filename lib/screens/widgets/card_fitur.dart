import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardfeature extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color cardColor;
  final Color textColor;
  final double iconSize;

  const Cardfeature({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.cardColor,
    required this.textColor,
    this.iconSize = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: iconSize,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
