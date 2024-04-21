import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';

mylunchUrl(String url) async {
  var uri = Uri.parse(url);
  if (!await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    log("could not lunch : $url");
  }
}
