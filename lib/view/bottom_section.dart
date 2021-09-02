import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobigic/controller/create_grid_controller.dart';

// ignore: must_be_immutable
class BottomSection extends StatelessWidget {
  BottomSection({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  CreateGridController createGridController = Get.put(CreateGridController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Enter the Sentence that you want to see in grid',
            style: GoogleFonts.robotoSlab(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: add(50, 300),
        ),
        Center(
          child: Container(
            width: Get.width * 0.4,
            decoration: BoxDecoration(
                color: Colors.blue[200],
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextButton(
                onPressed: () {
                  createGridController.addDataInGrid(
                      createGridController.addStringcontroller.text);
                },
                child: Text(
                  'Add',
                  style: GoogleFonts.robotoSlab(color: Colors.black),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Enter the Sentence that you want to search',
            style: GoogleFonts.robotoSlab(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: search(50, 300),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                      onPressed: () {
                        createGridController.search(searchController.text);
                      },
                      child: Text(
                        'Search',
                        style: GoogleFonts.robotoSlab(color: Colors.black),
                      )),
                ),
              ),
              Center(
                child: Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                      onPressed: () {
                        createGridController.reset();
                      },
                      child: Text(
                        'Reset',
                        style: GoogleFonts.robotoSlab(color: Colors.black),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget search(double height, double widith) {
    return Container(
      height: height,
      width: widith,
      child: TextFormField(
        keyboardType: TextInputType.name,
        controller: searchController,
        style: GoogleFonts.robotoSlab(color: Colors.black),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true),
      ),
    );
  }

  Widget add(double height, double widith) {
    return Container(
      height: height,
      width: widith,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        // validator: (val) {
        //   return RegExp(r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        //           .hasMatch(val!)
        //       ? null
        //       : " Required min 8 digits,1 special character and 1 numeric";
        // },
        controller: createGridController.addStringcontroller,
        style: GoogleFonts.robotoSlab(color: Colors.black),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true),
      ),
    );
  }
}
