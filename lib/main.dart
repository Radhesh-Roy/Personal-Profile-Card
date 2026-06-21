import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_profile_card/profile_card/profile_card.dart';

void main() {
  runApp( ScreenUtilInit(
    designSize: Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_ , child){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Profile Card",
        initialRoute: "/profile",
        routes: {
          "/profile": (contex)=>ProfileCard()

        },
      );
    }

  ));
}