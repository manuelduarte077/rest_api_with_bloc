import 'dart:io';

import 'package:flutter/material.dart';

class DomainWebView extends StatefulWidget {
  final String? link;
  DomainWebView({Key? key, this.link}) : super(key: key);

  @override
  DomainWebViewState createState() => DomainWebViewState();
}

class DomainWebViewState extends State<DomainWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Domain WebView'),
      ),
      body: Text(widget.link ?? 'No link'),
    );
  }
}
