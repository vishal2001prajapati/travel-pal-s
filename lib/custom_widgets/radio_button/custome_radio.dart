import 'package:flutter/material.dart';

class CustomRadioItems extends StatelessWidget {
  String selectedValue;

  String radioValue;
  String title;
  final ValueChanged<String?>? onChanged;

  CustomRadioItems(
      {Key? key,
      required this.title,
      required this.radioValue,
      required this.selectedValue,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(onChanged != null) {
          onChanged!(radioValue);
        }

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: radioValue == selectedValue
              ? const Color(0xffEDFFFF)
              : const Color(0xffF9F9F9),
          border: Border.all(
              width: 2,
              color: radioValue == selectedValue
                  ? const Color(0xff41C8CD)
                  : const Color(0xffD9D9D9)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 6, left: 25, right: 17),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    color: radioValue == selectedValue
                        ? const Color(0xff01B5BB)
                        : const Color(0xffA9A7A7)),
              )),
              Radio<String>(
                value: radioValue,
                groupValue: selectedValue,
                onChanged: onChanged,
                fillColor: MaterialStateColor.resolveWith((states) =>
                    radioValue == selectedValue
                        ? Color(0xff41C8CD)
                        : const Color(0xffA9A7A7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
