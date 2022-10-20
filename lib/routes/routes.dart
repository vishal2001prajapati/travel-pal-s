import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:travelpals/user_profile/ProfileDetailPage.dart';


import 'HomeBinding.dart';

class Routes {
  Routes._();

  static const String home = '/home';
}

class Screen {
  Screen._();

  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => ProfileDetailPage(),
      binding: HomeBinding(),
    ),
  ];
}
