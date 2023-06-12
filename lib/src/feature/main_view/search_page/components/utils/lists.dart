import 'package:flutter/material.dart';

List<String> cars = [
  'Malibu 2',
  'Tracker',
  'Captiva',
  'Gentra',
  'Cobalt',
  'Spark',
  'Nexia',
];
// 
//List<String> searchedCarsHistory = [];
List<String> dropdownvalue = [
  'All brands',
  'All marks',
  'Petrol',
  'All colors',
];

// List of items in our dropdown menu
var allbrands = [
  'All brands',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
var allmarks = [
  'All marks',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
var petrol = [
  'Petrol',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
var allcolors = [
  'All colors',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];

class ValueRefresh {
  List<String> searchedCarsHistory;
  bool isWriting;
  double currentValue;
  bool isExist;
  TextEditingController searchCarCtr;
  List<String> foundCars;
  ValueRefresh(
    this.searchCarCtr,
    this.isWriting,
    this.searchedCarsHistory,
    this.currentValue,
    this.isExist,
    this.foundCars,
);
}