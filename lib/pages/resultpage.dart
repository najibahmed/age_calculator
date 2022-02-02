// ignore_for_file: unnecessary_string_interpolations, avoid_unnecessary_containers

import 'package:age_calculator/Widget/app_title.dart';
import 'package:age_calculator/Widget/customListTile.dart';
import 'package:age_calculator/Widget/summaryCard.dart';
import 'package:age_calculator/constant/colors.dart';
import 'package:age_calculator/global/helper_function.dart';
import 'package:age_calculator/global/utils.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTitle(),
              Spacer(),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      customListTile(
                        leading: "Date of birth",
                        trailing: getFormatedDate(selectedBithDate),
                      ),
                      customListTile(
                        leading: "Todays Date",
                        trailing: getFormatedDate(selectedCurrentDate),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .38,
                    height: 110,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Age is"),
                          Spacer(),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "22",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            TextSpan(
                              text: "Years",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            )
                          ])),
                          Spacer(),
                          Text("months | days")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .38,
                    height: 110,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Next Birthday"),
                          Spacer(),
                          Text(
                            "MOnday",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Spacer(),
                          Text("months | days")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                // height: 110,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      "Age in Total",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SummaryCardBuilder(
                                  title: "Years",
                                  subTitle: "sub",
                                ),
                                SizedBox(height: 20),
                                SummaryCardBuilder(
                                  title: "Weeks",
                                  subTitle: "sub",
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SummaryCardBuilder(
                                  title: "Months",
                                  subTitle: "sub",
                                ),
                                SizedBox(height: 20),
                                SummaryCardBuilder(
                                  title: "Hours",
                                  subTitle: "sub",
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SummaryCardBuilder(
                                  title: "Days",
                                  subTitle: "sub",
                                ),
                                SizedBox(height: 20),
                                SummaryCardBuilder(
                                  title: "Minutes",
                                  subTitle: "sub",
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 56,
                width: MediaQuery.of(context).size.width * .8,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Re-Calculate",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    // primary: Colors.green,
                    elevation: 10,
                  ),
                ),
              ),
              Spacer()
            ]),
      ),
    );
  }
}
