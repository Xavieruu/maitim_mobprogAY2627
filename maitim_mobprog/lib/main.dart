import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maitim_mobprog/constants.dart';
import 'package:maitim_mobprog/screens/home_screen.dart';
import 'package:maitim_mobprog/screens/newsfeed_screen.dart';
import 'package:maitim_mobprog/screens/notification_screen.dart';

void main() => runApp(const MaitimFacebook());

class MaitimFacebook extends StatelessWidget {
  const MaitimFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: APP_NAME,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: FB_PRIMARY),
          ),
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsFeedScreen(),
            '/notification': (context) => const NotificationScreen(),
            '/home': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}