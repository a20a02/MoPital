import 'package:flutter/material.dart';
import 'package:mopital_app/Screen/categoriesscreen/health.dart';
import 'package:mopital_app/Screen/categoriesscreen/information.dart';
import 'package:mopital_app/Screen/categoriesscreen/medical_center.dart';
import 'package:mopital_app/Screen/categoriesscreen/shopping.dart';
import 'package:mopital_app/Screen/categoriesscreen/sleeping.dart';
import 'package:mopital_app/Screen/categoriesscreen/vaccines.dart';

class Categories {
  final String name;
  final String imageURL;
  final Widget page;

  Categories({
    required this.name,
    required this.imageURL,
    required this.page,
  });
}

List<Categories> categories = [
  Categories(
    name: 'Health',
    imageURL: 'images/health.svg',
    page: const Health(),
  ),
  Categories(
    name: 'Sleeping',
    imageURL: 'images/sleeping.svg',
    page: const Sleeping(),
  ),
  Categories(
    name: 'Vaccines',
    imageURL: 'images/vaccines.svg',
    page: const Vaccines(),
  ),
  Categories(
    name: 'Medical Centers',
    imageURL: 'images/hospital.svg',
    page: const MedicalCenter(),
  ),
  Categories(
    name: 'Shopping',
    imageURL: 'images/shopping.svg',
    page: const Shopping(),
  ),
  Categories(
    name: 'Information',
    imageURL: 'images/information.svg',
    page: const Information(),
  ),
];
