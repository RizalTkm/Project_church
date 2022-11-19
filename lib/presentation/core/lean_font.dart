import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeanFont extends StatelessWidget {
  LeanFont({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400, fontSize: 40, color: Colors.black87),
      ),
    );
  }
}
