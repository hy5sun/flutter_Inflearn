import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  //위젯으로 변경
  @override
  Widget build(BuildContext context) {
    //위젯은 리턴타입
    return Scaffold(
      backgroundColor: Color(0xFFF99231),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              'asset/img/logo.png',
            ),
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
      ),
    );
  }
}
