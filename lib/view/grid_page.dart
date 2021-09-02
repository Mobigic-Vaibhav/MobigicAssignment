import 'package:flutter/material.dart';

import 'package:mobigic/view/bottom_section.dart';
import 'package:mobigic/view/create_grid_section.dart';
import 'package:mobigic/view/grid_view_section.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blue[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CreateGridView(),
                    GridViewSection(),
                  ],
                ),
                BottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}
