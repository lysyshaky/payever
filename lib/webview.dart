import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewMobile extends StatefulWidget {
  const WebViewMobile({Key? key}) : super(key: key);

  @override
  WebViewMobileState createState() => WebViewMobileState();
}

class WebViewMobileState extends State<WebViewMobile> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Center(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://commerceos.payever.org/',
        ),
      ),
    );
  }
}
