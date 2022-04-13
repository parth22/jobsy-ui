import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsy/const/colour.dart';

Widget commaTextfiled({
  String? prefixIcon,
  String? hintText,
  String? suffixIcon,
}) {
  return TextField(
    enabled: false,
    decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            prefixIcon!,
            height: 24,
            width: 24,
            fit: BoxFit.fill,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            suffixIcon!,
            height: 24,
            width: 24,
            fit: BoxFit.fill,
          ),
        ),
        hintText: hintText!,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'Nunito-SemiBold',
          color: Colours.blackColor,
          fontWeight: FontWeight.w600,
        )),
  );
}

Widget commanContainer({String? image}) {
  return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colours.lightBlue, borderRadius: BorderRadius.circular(19)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: SvgPicture.asset(image!),
      ));
}
