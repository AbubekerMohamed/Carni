import 'package:carni/utils/app_layout.dart';
import 'package:carni/utils/app_styles.dart';
import 'package:carni/widgets/layout_builder_widget.dart';
import 'package:carni/widgets/paired_column_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: AppLayout.getWidth(86),
                    height: AppLayout.getHeight(86),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/img_1.png")))),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Text(
                      "Book Tickets",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(3),
                          vertical: AppLayout.getHeight(3)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getWidth(100)),
                          color: const Color(0xFFFEF4F3)),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF526799)),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const Text(
                            "Premium Status",
                            style: TextStyle(
                                color: Color(0xFF566799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () => print("tapped"),
                      child: Text("Edit",
                          style: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                              fontWeight: FontWeight.w300)),
                    )
                  ],
                )
              ]),
              Gap(AppLayout.getHeight(8)),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(AppLayout.getHeight(8)),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: AppLayout.getHeight(90),
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: AppLayout.getWidth(18),
                              color: Color(0xFF264CD2))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(25),
                        vertical: AppLayout.getHeight(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FluentSystemIcons
                                .ic_fluent_lightbulb_filament_filled,
                            color: Styles.primaryColor,
                            size: 27,
                          ),
                        ),
                        Gap(AppLayout.getHeight(8)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You've got a new reward.",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "You have 95 flights in a year.",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(25)),
              Text(
                "Accumulated Miles",
                style: Styles.headLineStyle2,
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                    color: Styles.bgColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 2)
                    ]),
                child: Column(children: [
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    "19280",
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Miles accrued",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        "16 DEC 2022",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      PairedColumnWidget(
                        firstText: "23 042",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      PairedColumnWidget(
                        firstText: "Airline Co",
                        secondText: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const LayoutBuilderWidget(
                    sections: 6,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      PairedColumnWidget(
                        firstText: "24",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      PairedColumnWidget(
                        firstText: "Mc Donald's",
                        secondText: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const LayoutBuilderWidget(
                    sections: 6,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      PairedColumnWidget(
                        firstText: "52 340",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      PairedColumnWidget(
                        firstText: "NatraTek",
                        secondText: "Received From",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                ]),
              ),
              Gap(AppLayout.getHeight(25)),
              InkWell(
                onTap: () {
                  print("tapped");
                },
                child: Center(
                  child: Text("How to get more miles?",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              )
            ]));
  }
}
