import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobigic/controller/create_grid_controller.dart';


// ignore: must_be_immutable
class GridViewSection extends StatelessWidget {
  GridViewSection({Key? key}) : super(key: key);

  CreateGridController createGridController = Get.put(CreateGridController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.blue[100],
      height: Get.height * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GetBuilder<CreateGridController>(builder: (_) {
          return _.createTaped == true
              ? GridView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return index < _.addStringcontroller.text.length
                        ? Card(
                            elevation: 5,
                            child: Container(
                              color: Colors.blue[300],
                              height: Get.height * 0.01,
                              child: _.isAddtaped == true
                                  ? Center(child: Text(_.dataString[index]))
                                  : Text(''),
                            ))
                        : Card(child: Text(''));
                  },
                  itemCount: _.sum,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _.columncount,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                )
              : Container(
                  child: Center(
                      child: Text('Insert row and column to see result')),
                );
        }),
      ),
    ));
  }
}
