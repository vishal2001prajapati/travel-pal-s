import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? textColor;
  final Color? bgColor;
  final Color? borderColor;
  final double? radius;
  final double? height;
  final double? width;
  final FontWeight? fontWeight;
  final int? fontSize;
  final String title;
  final Function onTap;

  const CustomButton(
      {required this.title,
      required this.onTap,
      this.textColor,
      this.radius,
      this.height,
      this.width,
      this.bgColor,
      this.borderColor,
      this.margin,
      this.padding,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
            height: height ?? 50,
            width: width ?? double.infinity,
            alignment: Alignment.center,
            padding: padding ?? EdgeInsets.symmetric(horizontal: 12),
            margin: margin ?? EdgeInsets.zero,
            decoration: BoxDecoration(
                color: bgColor ?? Colors.red,
                border: Border.all(color: borderColor ?? Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 30))),
            child: Text(title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18, color: textColor ?? Colors.white))));
  }
}
