import 'package:flutter/material.dart';

class CustomCheckBoxItems extends StatelessWidget {
  String title;
  bool isChecked = false;
  final ValueChanged<bool?> onChanged;

  CustomCheckBoxItems(
      {Key? key,
      required this.title,
      required this.isChecked,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!isChecked);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isChecked ? const Color(0xffEDFFFF) : const Color(0xffF9F9F9),
          border: Border.all(
              width: 2,
              color: isChecked
                  ? const Color(0xff41C8CD)
                  : const Color(0xffD9D9D9)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 6, bottom: 6, left: 25, right: 17),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    color: isChecked
                        ? const Color(0xff01B5BB)
                        : const Color(0xffA9A7A7)),
              )),
              /*Padding(
                padding: const EdgeInsets.all(10.0),
                child: isChecked
                    ? const Icon(
                        Icons.check_circle,
                        size: 30.0,
                        color: Color(0xff01B5BB),
                      )
                    : const Icon(
                        Icons.circle_outlined,
                        size: 30.0,
                        color: Color(0xffD9D9D9),
                      ),
              ),*/
              Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                value: isChecked,
                onChanged: onChanged,
                activeColor: Color(0xff01B5BB),
                fillColor: MaterialStateColor.resolveWith((states) =>
                    isChecked ? Color(0xff41C8CD) : const Color(0xffA9A7A7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
