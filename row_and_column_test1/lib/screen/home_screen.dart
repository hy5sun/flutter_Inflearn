import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false, //ios는 화면 맨 밑까지 색이 적용됨
        child: Container(
            color: Colors.black, //비는 부분에는 검정색
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.green,
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.orange,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.green,
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.green,
                ),
              ],
            )
        ),
      ),
    );
  }
}