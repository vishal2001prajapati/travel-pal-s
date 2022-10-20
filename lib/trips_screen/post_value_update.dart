import 'package:get/get.dart';

class PostTripValueUpdate extends GetxController {
  var valueUpdate = 0.obs;

  increment() {
    valueUpdate.value++;
    print('increment-->$valueUpdate');
  }

  decrement() {
    if (valueUpdate != 0) {
      valueUpdate.value--;
    }
    print('decrement-->$valueUpdate');
  }
}
