import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false, //ios는 화면 맨 밑까지 색이 적용됨
          child: Container(
              color: Colors.black,
              //비는 부분에는 검정색
              //height: MediaQuery.of(context).size.height, //앱이 실행중인 핸드폰의 사이즈 넓이(weight)/높이(height)
              //mainAxisAlignment할 때는 weight, crossAxisAlignment 할 때는 height
              child: Column(
                // MainAxisAlignment - 주축 정렬
                // Column은 세로로 위젯 배치. Row는 가로로 위젯 배치.
                // start - 시작
                // end - 끝
                // center - 가운데
                // spaceBetween - 위젯들이 서로 동일한 간격을 둠
                // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도
                //               위젯이 아닌 빈 간격으로 시작한다.
                // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // CrossAxisAlignment - 반대축 정렬
                // Row는 세로로 위젯 배치. Column은 가로로 위젯 배치.
                // start - 시작
                // end - 끝
                // center - 가운데
                // stretch - 양쪽으로 최대한 늘린다.
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                // MainAxisSize - 주축 크기
                // max - 최대
                // min - 최소
                children: [
                  // Expanded / Flexible
                  Flexible( //일단 비율만큼 차지를 하되, child 안에 있는 위젯이 그 공간을 다 차지하지 않으면 남는 공간은 버린다.
                    flex: 3,
                    child: Container(
                      color: Colors.red,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.orange,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}