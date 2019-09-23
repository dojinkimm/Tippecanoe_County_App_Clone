import 'package:flutter/material.dart';

enum BlockStatus { ADMIN, CORRECTIONS, SERVICES, SNS, 
                    BACK, URL_LAUNCHER, MODAL, COMPLAINT }


class Data{
  final BlockStatus status;
  final int index;
  final String title;
  final IconData icon;
  final Color color; 
  final String url;

  Data({
    this.status,
    this.index,
    this.title,
    this.icon,
    this.color,
    this.url
  });
}