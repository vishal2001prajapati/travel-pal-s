import 'package:flutter/material.dart';

import 'custome_checkbox.dart';

class CustomCheckBoxButtons extends StatefulWidget {
  List<String> listOfRadioButtons;
  String? defaultSelectedItem;
  Function(String) selectedRadioButton;

  CustomCheckBoxButtons(
      {Key? key,
      required this.listOfRadioButtons,
      this.defaultSelectedItem,
      required this.selectedRadioButton})
      : super(key: key);

  @override
  State<CustomCheckBoxButtons> createState() => _CustomCheckBoxButtonsState();
}

class _CustomCheckBoxButtonsState extends State<CustomCheckBoxButtons> {
  Map<String, bool?> map = Map();
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    if (widget.listOfRadioButtons.isNotEmpty) {
      setState(() {
        widget.listOfRadioButtons.forEach((element) {
          map[element] = false;
        });
        print('map value  is:${map}');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.listOfRadioButtons.isNotEmpty
        ? ListView.builder(
            itemCount: widget.listOfRadioButtons.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: 27, right: 27, top: (index == 0) ? 0.0 : 16.0),
                child: CustomCheckBoxItems(
                  title: widget.listOfRadioButtons[index],
                  onChanged: (val) {
                    setState(() {
                      if (val != null) {
                        map[widget.listOfRadioButtons[index]] = val!;
                      }
                    });
                  },
                  isChecked: map[widget.listOfRadioButtons[index]]!,
                ),
              );
            },
          )
        : const Text('List is Empty');
  }
}
