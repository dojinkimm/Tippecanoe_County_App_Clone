import 'package:flutter/material.dart';

enum BlockStatus { MAIN, URL_LAUNCHER, MODAL, EMAIL}


class Data{
  final BlockStatus status;
  final int index;
  final String title;
  final Widget svg;
  final String url;
  final String email;
  final Map<String, String> dialog;
  

  Data({
    this.status,
    this.index,
    this.title,
    this.svg,
    this.url,
    this.email,
    this.dialog,
  });
}