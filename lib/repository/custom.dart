import '../models/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Data> lafayette = [
  Data(
      index: 0,
      title: "Inmate Lookup",
      svg: SvgPicture.asset("assets/000-jail.svg", semanticsLabel: 'Jail'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://www3.tippecanoe.in.gov/InmateListing/InmateSearch.aspx"),
  Data(
      index: 1,
      title: "Video Visitation",
      svg: SvgPicture.asset("assets/001-video-visitation.svg", semanticsLabel: 'Video Visitation'),
      status: BlockStatus.MODAL,
      dialog: {
        "GTL Video Visitation Web": 
            "https://tippecanoein.gtlvisitme.com/VisitorKiosk/app",
        "Download Vismobile App":
            "https://play.google.com/store/apps/details?id=air.com.renovo.vismobile&hl=en_US"
      }),
  Data(
      index: 2,
      title: "Visitation Policy",
      svg: SvgPicture.asset("assets/002-policy.svg", semanticsLabel: 'Visitation Policy'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://www.tippecanoe.in.gov/468/Inmate-Visitation-Policy"),
  Data(
      index: 3,
      title: "Commissary",
      svg: SvgPicture.asset("assets/003-commissary.svg", semanticsLabel: 'Commissary',),
      status: BlockStatus.URL_LAUNCHER,
      url: "https://deposits.jailatm.com/WebDeposits/Default.aspx"),
  Data(
      index: 4,
      title: "Crash Report",
      svg: SvgPicture.asset("assets/004-car-crash.svg", semanticsLabel: 'Crash Report'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/486/Crash-Reports"),
  Data(
      index: 5,
      title: "Records Request",
      svg: SvgPicture.asset("assets/005-record.svg", semanticsLabel: 'Record Request'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/524/Public-Record-Requests"),
  Data(
      index: 6,
      title: "Traffic Complaints",
      svg: SvgPicture.asset("assets/006-traffic.svg", semanticsLabel: 'Traffic Complaints'),
      email: "mailto:traffic@tippecanoe.in.gov?subject=Traffic Complaints&body=&body=Name of requestor:<br/>Address of request:<br/> Requestor phone number:",
      status: BlockStatus.EMAIL),
  Data(
      index: 7,
      title: "We-Tip",
      svg: SvgPicture.asset("assets/007-tip.svg", semanticsLabel: 'We-Tip'),
      status: BlockStatus.URL_LAUNCHER,
      url: "https://wetip.com/"),
  Data(
      index: 8,
      title: "Sex Offenders",
      svg: SvgPicture.asset("assets/008-sex.svg", semanticsLabel: 'Sex Offenders'),
      status: BlockStatus.URL_LAUNCHER,
      url:
          "http://sheriffalerts.com/cap_office_disclaimer.php?office=54758&fwd=aHR0cDovL3d3dy5pY3JpbWV3YXRjaC5uZXQvaW5kZXgucGhwP0FnZW5jeUlEPTU0NzU4"),
  Data(
      index: 9,
      title: "Sheriff Sale",
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
      svg: SvgPicture.asset("assets/010-tax.svg", semanticsLabel: 'Tax Warrants'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/480/Tax-Warrants"),
  Data(
      index: 11,
      title: "Gun Permits",
      svg: SvgPicture.asset("assets/011-gun.svg", semanticsLabel: 'Gun Permits'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/477/Firearm-Permits"),
  Data(
      index: 12,
      title: "Contact Us",
      svg: SvgPicture.asset("assets/012-contact.svg", semanticsLabel: 'Contacts'),
      status: BlockStatus.MODAL,
      dialog: {
        "Administration": "tel:+1 765 423 9388",
        "Dispatch": "tel:+1 765 423 9321",
        "Jail": "tel:+1 765 423 1655",
        "Juvenile": "tel:+1 765 269 4025",
      }),
  Data(
      index: 13,
      title: "Career",
      svg: SvgPicture.asset("assets/013-career.svg", semanticsLabel: 'Career'),
      status: BlockStatus.URL_LAUNCHER,
      url: "https://www.tippecanoe.in.gov/470/Employment"),
  Data(
      index: 14,
      title: "Animal Control",
      svg: SvgPicture.asset("assets/014-dog.svg", semanticsLabel: 'Acme Logo'),
      status: BlockStatus.URL_LAUNCHER,
      url: "http://tippecanoe.in.gov/473/Animal-Control"),
  Data(
      index: 15,
      title: "Patrol Request",
      svg: SvgPicture.asset("assets/015-police-car.svg", semanticsLabel: 'Extra Patrol Request'),
      status: BlockStatus.EMAIL,
      email: "mailto:tcsodispatch@tippecanoe.in.gov?subject=Extra Patrol Request&body=Name of requestor:<br/>Address of request:<br/> Requestor phone number:"),
  Data(
      index: 16,
      title: "Social Media",
      svg: SvgPicture.asset("assets/016-sns.svg", semanticsLabel: 'SNS'),
      status: BlockStatus.MODAL,
      dialog: {"Facebook": "https://www.facebook.com/TCSOIndiana", "Twitter": "https://mobile.twitter.com/tippecanoecosh1", "Instagram":"https://www.instagram.com/tcso79/"}
      ),
  Data(
      index: 17,
      title: "Event Security",
      svg: SvgPicture.asset("assets/017-balloon.svg", semanticsLabel: 'Event Security'),
      email: "mailto:rwhainje@tippecanoe.in.gov?subject=Event Security&body=&body=Name of requestor:<br/>Address of request:<br/> Requestor phone number:",
      status: BlockStatus.EMAIL),
];
