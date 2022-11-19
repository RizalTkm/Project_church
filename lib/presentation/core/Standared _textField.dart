import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StandaredTextfield extends StatelessWidget {
  const StandaredTextfield(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.obscuretext});

  final String hintText;
  final TextEditingController textEditingController;
  final bool obscuretext;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: TextField(
          obscureText: obscuretext,
          controller: textEditingController,
          decoration: InputDecoration(
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white, strokeAlign: StrokeAlign.inside)),
            hintText: hintText,
            filled: true,
            fillColor: Colors.white.withOpacity(.4),
          ),
        ),
      ),
    );
  }
}
