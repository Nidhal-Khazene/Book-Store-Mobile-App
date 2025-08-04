import 'package:url_launcher/url_launcher.dart';

import 'custom_snackbar.dart';

Future<void> customLaunchUrl(context, String? urlLink) async {
  if (urlLink != null) {
    Uri url = Uri.parse(urlLink);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
          enableDomStorage: true,
          headers: <String, String>{},
        ),
      );
    } else {
      customSnackBar(context, url);
    }
  }
}
