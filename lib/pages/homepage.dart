// ignore_for_file: avoid_unnecessary_containers, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, unused_element, unused_local_variable, curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'dart:html';
import 'dart:ui';

import 'package:age_calculator/Widget/app_title.dart';
import 'package:age_calculator/Widget/datepickerfield.dart';
import 'package:age_calculator/constant/colors.dart';
import 'package:age_calculator/global/helper_function.dart';
import 'package:age_calculator/global/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTitle(),
            Spacer(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Discover exactly how old you are and how many days there are until your next birthday.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'roboto',
                    color: textColor,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              child: Image.asset("assets/life_circle.jpg",
                  width: 320, height: 120),
            ),
            Spacer(),
            DatePickerField(
              lebel: 'Select date of birth',
              onTap: () => _selectDate(context, selectedBithDate, "BirthDate"),
              hintText: "${getFormatedDate(selectedBithDate)}",
            ),
            Spacer(),
            DatePickerField(
              lebel: 'Select current Date',
              onTap: () {
                _selectDate(context, selectedCurrentDate, "CurrentDate");
                print("najib");
              },
              hintText: "${getFormatedDate(selectedCurrentDate)}",
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Calculate",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w800,
                    )),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: primaryColor,
                  elevation: 10,
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(
      BuildContext context, DateTime initialDate, String from) async {
    if (from == 'BirthDate') {
      final DateTime? pickedBirthDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );
      if (pickedBirthDate != null && pickedBirthDate != selectedBithDate) {
        setState(() {
          selectedBithDate = pickedBirthDate;
        });
      }
    }
    if (from == "CurrentDate") {
      final DateTime? pickedCurrentDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );

      if (pickedCurrentDate != null &&
          pickedCurrentDate != selectedCurrentDate) {
        setState(() => selectedCurrentDate = pickedCurrentDate);
      }
    }
  }
}
