
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class resultscreen2 extends StatelessWidget {

  WebViewController _controller;
  @override

  Widget build(BuildContext context) {
    return Scaffold(

        body: WebView(initialUrl: "https://thingspeak.com/channels/1658100/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&type=line&update=15",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated
              : (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },));


  }
}
