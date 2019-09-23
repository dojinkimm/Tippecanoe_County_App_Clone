import '../models/data.dart';
import 'package:flutter/material.dart';


List<Data> info_main = [
  Data(index: 0, title: "Admin", icon: Icons.business, color: Colors.blue, status: BlockStatus.ADMIN),
  Data(index: 1, title: "Sex Offenders", icon: Icons.perm_contact_calendar, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "http://sheriffalerts.com/cap_office_disclaimer.php?office=54758&fwd=aHR0cDovL3d3dy5pY3JpbWV3YXRjaC5uZXQvaW5kZXgucGhwP0FnZW5jeUlEPTU0NzU4"),
  Data(index: 2, title: "Corrections", icon: Icons.star, color: Colors.blue, status: BlockStatus.CORRECTIONS),
  Data(index: 3, title: "We-Tip", icon: Icons.lightbulb_outline, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "https://wetip.com/"),
  Data(index: 4, title: "Contacts", icon: Icons.people, color: Colors.blue, status: BlockStatus.MODAL),
  Data(index: 5, title: "Services", icon: Icons.help, color: Colors.blueAccent, status: BlockStatus.SERVICES),
  Data(index: 6, title: "Social Media", icon: Icons.phone_android, color: Colors.blue, status: BlockStatus.SNS),
  Data(index: 7, title: "Privacy Policy", icon: Icons.assignment, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "https://github.com/canis617/Tippecanoe-County-Sheriff-App/blob/develop2/privacy_policy.md")
];

List<Data> info_admin = [
  Data(index: 0, title: "Back", icon: Icons.arrow_back, color: Colors.blue, status: BlockStatus.BACK),
  Data(index: 1, title: "Phone Directory", icon: Icons.phone, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "https://www.tippecanoe.in.gov/Directory.aspx?did=43"),
  Data(index: 2, title: "Admin Line", icon: Icons.person_add, color: Colors.blue, status: BlockStatus.URL_LAUNCHER, url: "tel:+1 7654239388"),
  Data(index: 3, title: "Job Apply", icon: Icons.person, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "https://www.tippecanoe.in.gov/470/Employment"),
];


List<Data> info_correction = [
  Data(index: 0, title: "Back", icon: Icons.arrow_back, color: Colors.blue, status: BlockStatus.BACK),
  Data(index: 1, title: "Inmate lookup", icon: Icons.line_weight, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "http://www3.tippecanoe.in.gov/InmateListing/InmateSearch.aspx"),
  Data(index: 2, title: "Commissary", icon: Icons.store_mall_directory, color: Colors.blue, status: BlockStatus.URL_LAUNCHER, url: "https://deposits.jailatm.com/WebDeposits/Default.aspx"),
  Data(index: 3, title: "Video visitation", icon: Icons.videocam, color: Colors.blueAccent, status: BlockStatus.MODAL),
  Data(index: 4, title: "Visitation Policy", icon: Icons.people, color: Colors.blue, status: BlockStatus.URL_LAUNCHER, url: "http://www.tippecanoe.in.gov/468/Inmate-Visitation-Policy"),
];


List<Data> info_services = [
  Data(index: 0, title: "Back", icon: Icons.arrow_back, color: Colors.blue, status: BlockStatus.BACK),
  Data(index: 1, title: "Sheriff's Sale", icon: Icons.attach_money, color: Colors.blueAccent, status: BlockStatus.MODAL),
  Data(index: 2, title: "Gun Permits", icon: Icons.help_outline, color: Colors.blue, status: BlockStatus.URL_LAUNCHER, url: "http://tippecanoe.in.gov/477/Firearm-Permits"),
  Data(index: 3, title: "Car Reports", icon: Icons.help_outline, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "http://tippecanoe.in.gov/486/Crash-Reports"),
  Data(index: 4, title: "Records Request", icon: Icons.help_outline, color: Colors.blue, status: BlockStatus.URL_LAUNCHER, url: "http://tippecanoe.in.gov/524/Public-Record-Requests"),
  Data(index: 5, title: "Animal Control", icon: Icons.help_outline, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "http://tippecanoe.in.gov/473/Animal-Control"),
  Data(index: 6, title: "Security and extra patrol request", icon: Icons.help_outline, color: Colors.blue, status: BlockStatus.MODAL),
  Data(index: 7, title: "Tax Warrants", icon: Icons.help_outline, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "http://tippecanoe.in.gov/480/Tax-Warrants"),
  Data(index: 8, title: "Traffic complaints", icon: Icons.help_outline, color: Colors.blue, status: BlockStatus.COMPLAINT),
];

List<Data> info_sns = [
  Data(index: 0, title: "Back", icon: Icons.arrow_back, color: Colors.blue, status: BlockStatus.BACK),
  Data(index: 1, title: "Facebook", icon: Icons.phone_android, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER,url: "https://www.facebook.com/TCSOIndiana"),
  Data(index: 2, title: "Twitter", icon: Icons.phone_android, color: Colors.blue, status: BlockStatus.URL_LAUNCHER, url: "https://mobile.twitter.com/tippecanoecosh1"),
  Data(index: 3, title: "Instgram", icon: Icons.phone_android, color: Colors.blueAccent, status: BlockStatus.URL_LAUNCHER, url: "https://www.instagram.com/tcso79/"),
];