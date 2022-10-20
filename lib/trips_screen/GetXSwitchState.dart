import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetXSwitchState extends GetxController {
  var isSwitcheded = false;
  final switchdatacontroller = GetStorage();

  GetXSwitchState() {
    print("Constructor called");
    // when user re-visit app, we check previous state of app weather it was on or off.
    if (switchdatacontroller.read('getXIsSwitched') != null) {
      isSwitcheded = switchdatacontroller.read('getXIsSwitched');
      update();
    }
  }

  // called when user click on switch to on/off it
  changeSwitchState(bool value) {
    isSwitcheded = value ;
    // store data in getstorage true or false
    //here in key 'getXIsSwitched' we store bool type either true or else
    // if true then switch is ON else OFF
    switchdatacontroller.write('getXIsSwitched', isSwitcheded);
    // update the UI
    update();
  }
}
