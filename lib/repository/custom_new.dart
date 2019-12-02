import '../models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// List<Data> info_sns = [
//   Data(
//       index: 0,
//       title: "Back",
//       icon: Icons.arrow_back,
//       color: Colors.blue,
//       status: BlockStatus.BACK),
//   Data(
//       index: 1,
//       title: "Facebook",
//       icon: FontAwesomeIcons.facebookSquare,
//       color: Colors.blueAccent,
//       status: BlockStatus.URL_LAUNCHER,
//       url: "https://www.facebook.com/TCSOIndiana"),
//   Data(
//       index: 2,
//       title: "Twitter",
//       icon: FontAwesomeIcons.twitterSquare,
//       color: Colors.blue,
//       status: BlockStatus.URL_LAUNCHER,
//       url: "https://mobile.twitter.com/tippecanoecosh1"),
//   Data(
//       index: 3,
//       title: "Instgram",
//       icon: FontAwesomeIcons.instagram,
//       color: Colors.blueAccent,
//       status: BlockStatus.URL_LAUNCHER,
//       url: "https://www.instagram.com/tcso79/"),
// ];

List<Data> lafayette = [
  Data(
      index: 0,
      title: "Inmate Lookup",
      icon: Icons.line_weight,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/000-jail.svg", semanticsLabel: 'Jail'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://www3.tippecanoe.in.gov/InmateListing/InmateSearch.aspx"),
  Data(
      index: 1,
      title: "Video Visitation",
      icon: Icons.videocam,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/001-video-visitation.svg", semanticsLabel: 'Video Visitation'),
      status: BlockStatus.MODAL,
      dialog: {
        "GTL Video Visitation Web":
            "https://tippecanoein.gtlvisitme.com/VisitorKiosk/app",
        "Open The Vismobile App": "",
        "Download Vismobile App":
            "https://play.google.com/store/apps/details?id=air.com.renovo.vismobile&hl=en_US"
      }),
  Data(
      index: 2,
      title: "Visitation Policy",
      icon: FontAwesomeIcons.userCheck,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/002-policy.svg", semanticsLabel: 'Visitation Policy'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://www.tippecanoe.in.gov/468/Inmate-Visitation-Policy"),
  Data(
      index: 3,
      title: "Commissary",
      icon: Icons.store_mall_directory,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/003-commissary.svg", semanticsLabel: 'Commissary',),
      status: BlockStatus.URL_LAUNCHER,
      url: "https://deposits.jailatm.com/WebDeposits/Default.aspx"),
  Data(
      index: 4,
      title: "Crash Report",
      icon: FontAwesomeIcons.carCrash,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/003-commissary.svg", semanticsLabel: 'Crash Report'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/486/Crash-Reports"),
  Data(
      index: 5,
      title: "Records Request",
      icon: FontAwesomeIcons.search,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/005-record.svg", semanticsLabel: 'Record Request'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/524/Public-Record-Requests"),
  Data(
      index: 6,
      title: "Traffic Complaints",
      icon: FontAwesomeIcons.exclamationTriangle,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/006-traffic.svg", semanticsLabel: 'Traffic Complaints'),
      status: BlockStatus.COMPLAINT),
  Data(
      index: 7,
      title: "We-Tip",
      icon: Icons.lightbulb_outline,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/007-tip.svg", semanticsLabel: 'We-Tip'),
      status: BlockStatus.URL_LAUNCHER,
      url: "https://wetip.com/"),
  Data(
      index: 8,
      title: "Sex Offenders",
      icon: FontAwesomeIcons.addressCard,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/008-sex.svg", semanticsLabel: 'Sex Offenders'),
      status: BlockStatus.URL_LAUNCHER,
      url:
          "http://sheriffalerts.com/cap_office_disclaimer.php?office=54758&fwd=aHR0cDovL3d3dy5pY3JpbWV3YXRjaC5uZXQvaW5kZXgucGhwP0FnZW5jeUlEPTU0NzU4"),
  Data(
      index: 9,
      title: "Sheriff Sale",
      icon: FontAwesomeIcons.percentage,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/009-sale.svg", semanticsLabel: 'Sheriff Sale'),
      status: BlockStatus.MODAL,
      dialog: {
        "Sheriff's Sale Guideline":
            "https://www.tippecanoe.in.gov/DocumentCenter/View/740/Sheriff-Sale-Guidelines-PDF?bidId=",
        "Sheriff's Sale Listing":
            "https://legacy.sri-taxsale.com/Foreclosure/PropertyListing.aspx?county=Tippecanoe"
      }),
  Data(
      index: 10,
      title: "Tax Warrants",
      icon: FontAwesomeIcons.dollarSign,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/009-sale.svg", semanticsLabel: 'Sheriff Sale'),
      // svg: SvgPicture.asset("assets/010-tax.svg", semanticsLabel: 'Tax Warrants'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/480/Tax-Warrants"),
  Data(
      index: 11,
      title: "Gun Permits",
      icon: FontAwesomeIcons.helicopter,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/011-gun.svg", semanticsLabel: 'Gun Permits'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/477/Firearm-Permits"),
  Data(
      index: 12,
      title: "Contact Us",
      icon: Icons.people,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/012-contact.svg", semanticsLabel: 'Contacts'),
      status: BlockStatus.MODAL,
      dialog: {
        "Administration": "tel:+1 765 423 9388",
        "Dispatch": "tel:+1 765 423 9321",
        "Jail": "tel:+1 765 423 1655"
      }),
  Data(
      index: 13,
      title: "Career",
      icon: Icons.person,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/013-career.svg", semanticsLabel: 'Career'),
      status: BlockStatus.URL_LAUNCHER,
      url: "https://www.tippecanoe.in.gov/470/Employment"),
  Data(
      index: 14,
      title: "Animal Control",
      icon: FontAwesomeIcons.dog,
      color: Colors.blueAccent,
      svg: SvgPicture.asset("assets/014-dog.svg", semanticsLabel: 'Acme Logo'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/473/Animal-Control"),
  Data(
      index: 15,
      title: "Extra Patrol Request",
      icon: FontAwesomeIcons.shieldAlt,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/015-police-car.svg", semanticsLabel: 'Extra Patrol Request'),
      status: BlockStatus.MODAL,
      dialog: {"Security Request": "", "Extra Patrol Request": ""}),
  Data(
      index: 16,
      title: "Social Media",
      icon: FontAwesomeIcons.globe,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/016-sns.svg", semanticsLabel: 'SNS'),
      status: BlockStatus.SNS),
  Data(
      index: 17,
      title: "Event Security",
      icon: FontAwesomeIcons.globe,
      color: Colors.blue,
      svg: SvgPicture.asset("assets/017-balloon.svg", semanticsLabel: 'Event Security'),
      status: BlockStatus.SNS),
];
