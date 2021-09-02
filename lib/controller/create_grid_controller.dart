import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateGridController extends GetxController {
  late int sum = 0;
  late int columncount;

  bool isAddtaped = false;
  bool createTaped = false;
  bool isSerched = false;

  

  List<String> dataString = [];
  List<String> searchString = [];

  TextEditingController rowController = TextEditingController();
  TextEditingController columnController = TextEditingController();
  TextEditingController addStringcontroller = TextEditingController();

  void createGrid(int rowCount, int columnCount) {
    createTaped = true;
    sum = rowCount * columnCount;
    columncount = columnCount;
    update();
    debugPrint(sum.toString() + "sum");
  }

  void addDataInGrid(String data) {
    isAddtaped = true;
    dataString = data.trim().replaceAll(' ', '').split('');
    update();
  }

  void search(String data) {
    searchString = data.trim().replaceAll(' ', '').split('');
    // //dataString.removeWhere((element) => !searchString.contains(element));
    // int flag = 0;
    // for (int i = 0; i < searchString.length; i++) {
    //   if (!dataString.contains(searchString[i])) {

    //     flag = 1;

    //   }
    // }

    // if (flag == 0) {
    //   return true;
    // } else {
    //   return false;
    // }
    // debugPrint(dataString
    //     .indexWhere((element) => !searchString.contains(element))
    //     .toString());

    // dataString.forEach((element) {
    //   print(searchString.indexOf(element));
    // });

    // if (searchString.any((item) => dataString.contains(item))) {
    //   debugPrint(dataString
    //       .indexWhere((element) => !searchString.contains(element))
    //       .toString());
    // } else {
    //   // Lists DON'T have any common element
    // }
    update();
  }

  reset() {
    rowController.clear();
    columnController.clear();
    addStringcontroller.clear();
    //search 
    createTaped = false;
    update();
  }

  
}
