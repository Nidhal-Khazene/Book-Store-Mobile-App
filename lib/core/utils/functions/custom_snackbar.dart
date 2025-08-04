import 'package:flutter/material.dart';

void customSnackBar(context, Uri url) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text("can not launch this url: $url")));
}
