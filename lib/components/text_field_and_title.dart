import 'package:flutter/material.dart';

class textfieldandtitle extends StatelessWidget {
    textfieldandtitle(
      {super.key,
      required this.title,
      required this.hitext,
      this.isShowpassword,
      this.suffixIcon,
      required this.validator,
      this.helpertext});
  final String title;
  final String hitext;
  final bool? isShowpassword;
  final Widget? suffixIcon;
  final String? Function(String? value) validator;
  final String? helpertext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 22),
        ),
        TextFormField(
          validator: validator,
          obscureText: isShowpassword ?? false,
          decoration: InputDecoration(
              helperText: helpertext,
              helperMaxLines: 2,
              suffixIcon: suffixIcon,
              hintText: hitext,
              enabledBorder:const UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 99, 165, 198))),
              focusedBorder:const UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 99, 165, 198))),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red))),
        )
      ],
    );
  }
}
