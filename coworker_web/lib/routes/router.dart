//import 'package:coworker/features/pages/group_info_page/view/group_info_page_screen.dart';
//import 'package:coworker/features/pages/group_page_list/view/group_page_screen.dart';
//import 'package:coworker/features/pages/home_page/view/home_page_screen.dart';

import 'package:coworker_web/pages/home/home_page.dart';
import 'package:coworker_web/pages/login/login_page.dart';

final routes = {
  //'/group_info': (context) => const GroupInfoPageScreen(),
  //'/group_page': (context) => const GroupPageScreen(title: 'C O W O R K E R'),
  //'/home': (context) => const HomePageScreen(title: 'C O W O R K E R'),
  'home':(context)=> const HomePage(),
  '/': (context) => const LoginPage(),
};