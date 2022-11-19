import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DigitOnlyTextField extends StatelessWidget {
  const DigitOnlyTextField(
      {super.key, required this.hintText, required this.textEditingController});

  final String hintText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: TextField(
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            AadharNumberFormatter(),
            LengthLimitingTextInputFormatter(14)
          ],
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

class AadharNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue previousValue, TextEditingValue nextvalue) {
    var inputText = nextvalue.text;
    if (nextvalue.selection.baseOffset == 0) {
      return nextvalue;
    }

    var bufferString = new StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write('/');
      }
    }

    var string = bufferString.toString();
    return nextvalue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}
