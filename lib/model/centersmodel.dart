import 'package:flutter/material.dart';
import 'package:mopital_app/constants.dart';

class CentersModel {
  final String brandname;
  final String brandimage;
  final String brandlocation;
  final String brandtype;
  final String brandlocationURl;
  final Color color;
  final IconData icon;

  CentersModel(
      {required this.brandname,
      required this.brandimage,
      required this.brandlocation,
      required this.brandtype,
      required this.brandlocationURl,
      required this.color,
      required this.icon});
}

List<CentersModel> shoppingData = [
  CentersModel(
    brandname: 'Optimal Baby',
    brandimage: 'images/optimal.png',
    brandlocation: 'Al Mansour , Bagdad , Iraq',
    brandtype: 'Baby Care Products',
    brandlocationURl:
        'https://www.google.com/maps/search/optimal+baby/@33.3085627,44.5346772,12z/data=!3m1!4b1',
    color: darkGreen,
    icon: Icons.shopify,
  ),
  CentersModel(
    brandname: 'Chicco Iraq',
    brandimage: 'images/chicco.png',
    brandlocation: 'Al Mansour , Bagdad , Iraq',
    brandtype: 'Baby Care Products',
    brandlocationURl:
        'https://www.google.com/maps/place/%D8%B4%D9%8A%D9%83%D9%88+%D8%A7%D9%84%D8%B9%D8%B1%D8%A7%D9%82%E2%80%AD/@33.3170625,44.3532624,17z/data=!4m14!1m7!3m6!1s0x15577e580e953153:0xcead0f92fceb7bc9!2z2LTZitmD2Ygg2KfZhNi52LHYp9mC!8m2!3d33.3170625!4d44.3506875!16s%2Fg%2F11c57d59k7!3m5!1s0x15577e580e953153:0xcead0f92fceb7bc9!8m2!3d33.3170625!4d44.3506875!16s%2Fg%2F11c57d59k7',
    color: darkOrange,
    icon: Icons.shopify,
  ),
];

List<CentersModel> hospitalhealthCenters = [
  CentersModel(
    brandname: "Al-Elwiya Children's Teaching Hospital",
    brandimage: 'images/hos1.png',
    brandlocation: 'Alsinaea Street , Baghdad , Iraq',
    brandtype: 'Hospital',
    brandlocationURl:
        'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%B9%D9%84%D9%88%D9%8A%D8%A9+%D8%A7%D9%84%D8%AA%D8%B9%D9%84%D9%8A%D9%85%D9%8A%E2%80%AD/@33.3071092,44.4511433,15z/data=!4m6!3m5!1s0x155781618a005c71:0x3b9045336233d655!8m2!3d33.3071092!4d44.4511433!16s%2Fg%2F1wc9p4cd',
    color: darkGreen,
    icon: Icons.local_hospital,
  ),
  CentersModel(
    brandname: "Children's Central Teaching Hospital",
    brandimage: 'images/hos2.png',
    brandlocation: '14 Ramadan Street , Bagdad , Iraq',
    brandtype: 'Hospital',
    brandlocationURl:
        'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%B7%D9%81%D9%84+%D8%A7%D9%84%D9%85%D8%B1%D9%83%D8%B2%D9%8A+%D8%A7%D9%84%D8%AA%D8%B9%D9%84%D9%8A%D9%85%D9%8A%E2%80%AD/@33.3323125,44.3375625,15z/data=!4m6!3m5!1s0x15577e8e022d8df3:0xf0a8b807fec76dc0!8m2!3d33.3323125!4d44.3375625!16s%2Fg%2F1ptw08zhm',
    color: darkOrange,
    icon: Icons.local_hospital,
  ),
  CentersModel(
    brandname: "Kadhimiya Children's Hospital",
    brandimage: 'images/hos2.png',
    brandlocation: 'Kadhimiya , Bagdad , Iraq',
    brandtype: 'Hospital',
    brandlocationURl:
        'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D8%B7%D9%81%D8%A7%D9%84+%D8%A7%D9%84%D9%83%D8%A7%D8%B8%D9%85%D9%8A%D8%A9%E2%80%AD/@33.3768092,44.3436098,15z/data=!4m6!3m5!1s0x15577915224f0d53:0xcd7ea5c9194fbe57!8m2!3d33.3768092!4d44.3436098!16s%2Fg%2F1hm4w16gm',
    color: lightGreen,
    icon: Icons.local_hospital,
  ),
];

List<CentersModel> socialcareCenters = [
  CentersModel(
    brandname: "Kids Dream City",
    brandimage: 'images/kids.png',
    brandlocation: 'Palestine Street , Bagdad , Iraq',
    brandtype: 'Social ',
    brandlocationURl:
        'https://www.google.com/maps/place/%D9%85%D8%AF%D9%8A%D9%86%D8%A9+%D8%AD%D9%84%D9%85+%D8%A7%D9%84%D8%A3%D8%B7%D9%81%D8%A7%D9%84+-+Kidz+Dream+City%E2%80%AD/@33.3435006,44.4334611,15z/data=!4m6!3m5!1s0x15578368785b42ab:0x5fdbee40febef7ba!8m2!3d33.3435006!4d44.4334611!16s%2Fg%2F11tjmbp5gz',
    color: lightOrange,
    icon: Icons.local_hospital,
  ),
  CentersModel(
    brandname: "Cocomelon Kids Zone",
    brandimage: 'images/coco.png',
    brandlocation: 'Al Mansour Street , Bagdad , Iraq',
    brandtype: 'Social ',
    brandlocationURl:
        'https://www.google.com/maps/place/Cocomelon+%D9%83%D9%88%D9%83%D9%88%D9%85%D9%8A%D9%84%D9%88%D9%86%E2%80%AD/@33.3047328,44.4766155,12z/data=!4m10!1m2!2m1!1sCocomelon+Kids+Zone!3m6!1s0x15577f18a19a8ff7:0x3d57f1af6d9f4a16!8m2!3d33.3047328!4d44.3365398!15sChNDb2NvbWVsb24gS2lkcyBab25lkgEZY2hpbGRyZW5fYW11c2VtZW50X2NlbnRlcuABAA!16s%2Fg%2F11tbx2dh2_',
    color: darkGreen,
    icon: Icons.local_hospital,
  ),
];
