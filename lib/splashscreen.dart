import 'package:flutter/material.dart';
import 'package:pixelpallet/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
 
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         
          SizedBox.expand(
            child: Image.network(
              'https://images.unsplash.com/photo-1519638399535-1b036603ac77?auto=format&fit=crop&w=1350&q=80',
              fit: BoxFit.cover,
            ),
          ),
          
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
         
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Your app logo (replace with your asset image)
                // Image.asset(
                //   'assets/logo.png',
                //   width: 150,
                //   height: 150,
                // ),
                SizedBox(height: 20),
                Text(
                  "PhotoMarket",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
