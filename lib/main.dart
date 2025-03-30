
import 'package:flutter/material.dart';
import 'package:pixelpallet/splashscreen.dart';
import 'package:pixelpallet/user/welcome.dart';
void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:SplashScreen(),
    debugShowCheckedModeBanner: false,);
  }
}