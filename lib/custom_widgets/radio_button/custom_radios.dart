import 'package:flutter/material.dart';

import 'custome_radio.dart';

class CustomRadioButtons extends StatefulWidget {
  List<String> listOfRadioButtons;
  String? defaultSelectedItem;
  Function(String) selectedRadioButton;

  CustomRadioButtons(
      {Key? key,
      required this.listOfRadioButtons,
      this.defaultSelectedItem,
      required this.selectedRadioButton})
      : super(key: key);

  @override
  State<CustomRadioButtons> createState() => _CustomRadioButtonsState();
}

class _CustomRadioButtonsState extends State<CustomRadioButtons> {
  String selectedValue = '';

  @override
  void initState() {
    super.initState();
    if (widget.listOfRadioButtons.isNotEmpty) {
      setState(() {
        if (widget.defaultSelectedItem != null &&
            widget.listOfRadioButtons.contains(widget.defaultSelectedItem))
          selectedValue = widget.defaultSelectedItem!;
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
                padding:  EdgeInsets.only(left: 27, right: 27, top: (index==0) ? 0.0 : 16.0),
                child: CustomRadioItems(
                    title: widget.listOfRadioButtons[index],
                    radioValue: widget.listOfRadioButtons[index],
                    selectedValue: selectedValue,
                    onChanged: (val) {
                      setState(() {
                        selectedValue = val as String;
                      });
                      widget.selectedRadioButton(val as String);
                    }),
              );
            },
          )
        : const Text('List is Empty');
  }
}
