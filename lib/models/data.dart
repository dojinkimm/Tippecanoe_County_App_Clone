import 'package:flutter/material.dart';

enum BlockStatus { ADMIN, CORRECTIONS, SERVICES, SNS, 
                    BACK, URL_LAUNCHER, MODAL, COMPLAINT }


class Data{
  final BlockStatus status;
  final int index;
  final String title;
  final Widget svg;
  final String url;
  final Map<String, String> dialog;

  Data({
    this.status,
    this.index,
    this.title,
    this.svg,
    this.url,
    this.dialog,
  });
}