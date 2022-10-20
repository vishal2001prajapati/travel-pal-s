import 'package:flutter/material.dart';
import 'package:travelpals/utils/colors.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);


  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
          title: const Text('Settings', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'MuseoSans-Regular-300.otf',
            fontSize: 20,
            color: ConstColors.SimpleTextColor
          )),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back, color: Color(0xff182538),),
            //replace with our own icon data.
          )
      )

  
    );
  }
}
