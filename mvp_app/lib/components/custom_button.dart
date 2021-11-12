import 'package:flutter/material.dart';
import 'package:mvp_app/common/styles.dart';
import 'package:mvp_app/components/button_icon.dart';
//ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.backGroundColor,  this.prefixIcon, this.suffixTitle, this.title}) : super(key: key);
  Color? backGroundColor;
  String? prefixIcon;
  String? suffixTitle;
  String? title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 50.0,
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: backGroundColor ?? baseAppColor,
              borderRadius: const BorderRadius.all(Radius.circular(7.0)),
            ),
            child: Text(title!, style: textButton),
          ),
          prefixIcon != null ? Positioned(
            left: 0.0,
            child: ButtonIcon(
              icon: prefixIcon,
            ),
          ) : const  SizedBox(),
          suffixTitle != null ? Positioned(
            right: 16.0,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
              decoration: const BoxDecoration(
                color: Color(0xFF20885E),
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              child: Text(suffixTitle!, style: size14BoldBlack),
            ),
          ) : const  SizedBox()
        ],
      ),
    );
  }
}
