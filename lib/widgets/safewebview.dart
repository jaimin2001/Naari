import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SafeWebView extends StatelessWidget {
  final String? url;
  SafeWebView({this.url});
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
    );
  }
}
