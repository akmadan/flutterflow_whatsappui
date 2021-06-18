import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';

String dateTimeFormat(String format, DateTime dateTime) {
  if (format == 'relative') {
    return timeago.format(dateTime);
  }
  return DateFormat(format).format(dateTime);
}

Future launchURL(String url) async {
  var uri = Uri.parse(url).toString();
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

DateTime get getCurrentTimestamp => DateTime.now();

bool get isIos => Platform.isIOS;
