import 'package:flutter/material.dart';
import 'package:personal_profile_card/profile_card/profile_card.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile Card",
    initialRoute: "/profile",
    routes: {
      "/profile": (contex)=>ProfileCard()

    },
  ));
}