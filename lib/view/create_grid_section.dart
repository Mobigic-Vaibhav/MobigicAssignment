import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobigic/controller/create_grid_controller.dart';

// ignore: must_be_immutable
class CreateGridView extends StatelessWidget {
  CreateGridView({Key? key}) : super(key: key);

  CreateGridController createGridController = Get.put(CreateGridController());

  @override
  Widget build(BuildContext context) {
    // int rowCount = int.parse(rowController.text);
    // int columCount = int.parse(columnController.text);
    return Container(
      width: Get.width * 0.4,
      height: Get.height * 0.47,
      color: Colors.blue[100],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Rows and Column that will genarate grid for you',
              style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              'Rows',
              style: GoogleFonts.robotoSlab(color: Colors.black),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            rowForm(50, 150),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              'Columns',
              style: GoogleFonts.robotoSlab(color: Colors.black),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            columnForm(50, 150),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: Get.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {
                    createGridController.createGrid(
                        createGridController.rowController.text.isEmpty
                            ? 0
                            : int.parse(
                                createGridController.rowController.text),
                        createGridController.columnController.text.isEmpty
                            ? 0
                            : int.parse(
                                createGridController.columnController.text));
                  },
                  child: Text(
                    'Create Grid',
                    style: GoogleFonts.robotoSlab(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget rowForm(double height, double widith) {
    return Container(
      height: height,
      width: widith,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: createGridController.rowController,
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

  Widget columnForm(double height, double widith) {
    return Container(
      height: height,
      width: widith,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: createGridController.columnController,
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
