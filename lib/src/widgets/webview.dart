import 'dart:io';

import 'package:api_test/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  final String title;
  final String url;
  WebViewExample({
    required this.title,
    required this.url,
  });
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: widget.title),
      ),
      body: WebView(
        
        initialUrl: 'https://bigbdshop.com',//change to 'url link'
      ),
    );
  }
}
