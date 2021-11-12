import 'package:flutter/material.dart';
import 'package:mvp_app/common/styles.dart';
class CustomInput extends StatelessWidget {
  CustomInput({Key? key, this.title}) : super(key: key);
  String ? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!,style: size16Hint),
        SizedBox(height: 10),
        TextField(
          obscureText: false,
          style: size18w400Black,
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: size18w400Black
          ),
        )
      ],
    );
  }
}
