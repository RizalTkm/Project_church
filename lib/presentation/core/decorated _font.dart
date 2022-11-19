import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class decoartedFont extends StatelessWidget {
  decoartedFont({
    super.key,
    required this.text,
  });

  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: GoogleFonts.crimsonPro(
            letterSpacing: 8, wordSpacing: 10, fontSize: 20),
      ),
    );
  }
}
