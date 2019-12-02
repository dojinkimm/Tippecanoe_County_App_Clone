import 'package:flutter/material.dart';

enum BlockStatus { ADMIN, CORRECTIONS, SERVICES, SNS, 
                    BACK, URL_LAUNCHER, MODAL, COMPLAINT }


class Data{
  final BlockStatus status;
  final int index;
  final String title;
  final IconData icon;
  final Widget svg;
  final Color color; 
  final String url;
  final Map<String, String> dialog;

  Data({
    this.status,
    this.index,
    this.title,
    this.icon,
    this.svg,
    this.color,
    this.url,
    this.dialog,
  });
}