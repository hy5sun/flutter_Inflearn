import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller; //여기에 저장
  final homeUrl = 'https://blog.codefactory.ai';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true, //false: 왼쪽에 타이틀 true: 중앙에 타이틀
        actions: [
          IconButton(onPressed: (){
            // http:// 요즘 사용 X
            // https:// 보완 굿
            if(controller == null){
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: Icon(
            Icons.home,
          ))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller){ //WebViewController를 받은 다음에
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted, //자바 스크립트 사용 가능하도록
        //자바 스크립트를 사용할 수 있도록 해야 유튜브를 재생할 수 있다.
      )
    );
  }
}
