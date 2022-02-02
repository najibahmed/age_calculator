// ignore_for_file: avoid_unnecessary_containers, file_names, camel_case_types

import 'package:age_calculator/constant/colors.dart';
import 'package:flutter/material.dart';

class customListTile extends StatelessWidget {
  final String? leading;
  final String? trailing;
  const customListTile({Key? key, this.leading, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$leading",
            style: TextStyle(
                fontSize: 18, color: textColor, fontWeight: FontWeight.normal),
          ),
          Text(
            "$trailing",
            style: TextStyle(
                fontSize: 18, color: textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
