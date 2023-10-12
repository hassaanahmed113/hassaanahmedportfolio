import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio_website/util/CustomButton.dart';
import 'package:myportfolio_website/util/colors.dart';
import 'package:myportfolio_website/util/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return _ResponsiveBody();
  }

  Widget _ResponsiveBody() {
    final Size size = MediaQuery.of(context).size;
    final isMobile = MediaQuery.of(context).size.width > 1100 &&
        MediaQuery.of(context).size.width <= 1300;
    final isMobile2 = MediaQuery.of(context).size.width > 500 &&
        MediaQuery.of(context).size.width <= 1100;
    final isMobile1 = MediaQuery.of(context).size.width <= 500;
    if (isMobile) {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: 20,
                left: 20,
              ),
              child: Container(
                child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Projects",
                          style: AppTextStyle.name1TextStyle(),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            height: 560,
                            child: CustomContainerres(
                                "assets/pro1.PNG",
                                "Pizza App\nProject",
                                "https://github.com/HassaanAhmed60211/PizzaApp",
                                "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                                "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                                500,
                                770)),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            height: 690,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer1res(
                      "assets/pro2.PNG",
                      "Ice Cream App\nProject",
                      "https://github.com/HassaanAhmed60211/IceCreamShopApp",
                      "https://drive.google.com/file/d/1LFkIAqqk373iS8mL9HfRsJwNNS8MMpiG/view?usp=sharing",
                      "videoUrl",
                      540,
                      560),
                  CustomContainer1res(
                      "assets/pro3.PNG",
                      "Calculator App\nProject",
                      "https://github.com/HassaanAhmed60211/digitalcalc_app",
                      "https://drive.google.com/file/d/1uCVPB6rBpKCSFvKrlWyxQZaZg5yV_QFF/view?usp=sharing",
                      "videoUrl",
                      540,
                      500),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            height: 680,
            child: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.07,
                  right: 20,
                  left: 20,
                ),
                child: CustomContainerres(
                    "assets/pro4.PNG",
                    "Todo App\nProject",
                    "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/flutter_todoapp",
                    "https://drive.google.com/file/d/1NsJXQN27nf2spnWPrw59XnOIrw2q5mqU/view?usp=sharing",
                    "https://github.com/HassaanAhmed60211",
                    570,
                    750)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            height: 700,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "FRONT END DEVELOPMENT",
                    style: AppTextStyle.name1TextStyle(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer1res(
                          "assets/uii1.PNG",
                          "Pizza Max App UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/pizzamaxapp",
                          "https://drive.google.com/file/d/1KLh5y93W5UQzcmez3N0EBnZ1NWa9Ip3B/view?usp=sharing",
                          "videoUrl",
                          395,
                          550),
                      CustomContainer1res(
                          "assets/ui2.PNG",
                          "Music Player App UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/musicifyapp",
                          "https://drive.google.com/file/d/1-1L58vAezNvK-hZf02F3nd_P_jQfvmOB/view?usp=sharing",
                          "videoUrl",
                          395,
                          550),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            height: 640,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer1res(
                          "assets/u4.PNG",
                          "ShopBag App UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/shopbagapp",
                          "https://drive.google.com/file/d/1F3Zm-b1O7SS9YjQL5XFZJW_wMI6031uh/view?usp=sharing",
                          "videoUrl",
                          395,
                          550),
                      CustomContainer1res(
                          "assets/ui3.PNG",
                          "Examination Form UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/customwidget_datetime",
                          "https://drive.google.com/file/d/1nYISP4ZwwE-jatPazKCdoycGEpaGl3r1/view?usp=sharing",
                          "videoUrl",
                          395,
                          550),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      "© 2023 Hassaan Ahmed. All rights reserved.",
                      style: AppTextStyle.nameTextStyle(16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    } else if (isMobile2) {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: 20,
                left: 20,
              ),
              child: Container(
                child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final fontSize = constraints.maxWidth < 700
                                ? 33.0
                                : constraints.maxWidth < 900
                                    ? 36.0
                                    : 41.0;
                            return Text(
                              "Projects",
                              style: AppTextStyle.name1TextStyleres(fontSize),
                            );
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            child: CustomContainerres(
                          "assets/pro1.PNG",
                          "Pizza App\nProject",
                          "https://github.com/HassaanAhmed60211/PizzaApp",
                          "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                          "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                          500,
                          770,
                        )),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, right: 20, left: 20, bottom: 80),
                child: CustomContainerres(
                    "assets/pro2.PNG",
                    "Ice Cream App\nProject",
                    "https://github.com/HassaanAhmed60211/IceCreamShopApp",
                    "https://drive.google.com/file/d/1LFkIAqqk373iS8mL9HfRsJwNNS8MMpiG/view?usp=sharing",
                    "videoUrl",
                    540,
                    560)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, right: 20, left: 20, bottom: 80),
                child: CustomContainerres(
                    "assets/pro3.PNG",
                    "Calculator App\nProject",
                    "https://github.com/HassaanAhmed60211/digitalcalc_app",
                    "https://drive.google.com/file/d/1uCVPB6rBpKCSFvKrlWyxQZaZg5yV_QFF/view?usp=sharing",
                    "videoUrl",
                    540,
                    500)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, right: 20, left: 20, bottom: 80),
                child: CustomContainerres(
                    "assets/pro4.PNG",
                    "Todo App\nProject",
                    "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/flutter_todoapp",
                    "https://drive.google.com/file/d/1NsJXQN27nf2spnWPrw59XnOIrw2q5mqU/view?usp=sharing",
                    "https://github.com/HassaanAhmed60211",
                    570,
                    750)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final fontSize = constraints.maxWidth < 700
                          ? 20.0
                          : constraints.maxWidth < 900
                              ? 28.0
                              : 33;
                      return Text(
                        "FRONT END DEVELOPMENT",
                        style: AppTextStyle.name1TextStyleres(fontSize),
                      );
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.bgColors,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres(
                            "assets/uii1.PNG",
                            "Pizza Max App UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/pizzamaxapp",
                            "https://drive.google.com/file/d/1KLh5y93W5UQzcmez3N0EBnZ1NWa9Ip3B/view?usp=sharing",
                            "videoUrl",
                            395,
                            550)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightBlue,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres(
                            "assets/ui2.PNG",
                            "Music Player App UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/musicifyapp",
                            "https://drive.google.com/file/d/1-1L58vAezNvK-hZf02F3nd_P_jQfvmOB/view?usp=sharing",
                            "videoUrl",
                            395,
                            550)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.bgColors,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres(
                            "assets/u4.PNG",
                            "ShopBag App UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/shopbagapp",
                            "https://drive.google.com/file/d/1F3Zm-b1O7SS9YjQL5XFZJW_wMI6031uh/view?usp=sharing",
                            "videoUrl",
                            395,
                            550)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightBlue,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres(
                            "assets/ui3.PNG",
                            "Examination Form UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/customwidget_datetime",
                            "https://drive.google.com/file/d/1nYISP4ZwwE-jatPazKCdoycGEpaGl3r1/view?usp=sharing",
                            "videoUrl",
                            395,
                            550)),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final fontSize = constraints.maxWidth < 300
                                ? 9.0
                                : constraints.maxWidth < 500
                                    ? 12.0
                                    : 16.0;
                            return Text(
                              "© 2023 Hassaan Ahmed. All rights reserved.",
                              style: AppTextStyle.nameTextStyleres(fontSize),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    } else if (isMobile1) {
      final width = MediaQuery.of(context).size.width <= 400;
      final width1 = MediaQuery.of(context).size.width <= 350;
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: 20,
                left: 20,
              ),
              child: Container(
                child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final fontSize = constraints.maxWidth < 700
                                ? 33.0
                                : constraints.maxWidth < 900
                                    ? 36.0
                                    : 41.0;
                            return Text(
                              "Projects",
                              style: AppTextStyle.name1TextStyleres(fontSize),
                            );
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            height: width1
                                ? 240
                                : width
                                    ? 290
                                    : 340,
                            child: CustomContainerres1(
                                "assets/pro1.PNG",
                                "Pizza App Project",
                                "https://github.com/HassaanAhmed60211/PizzaApp",
                                "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                                "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                                500,
                                770,
                                0.38,
                                0.35,
                                0.34,
                                0.31,
                                0.30,
                                0.27,
                                0.26,
                                0.23,
                                0.22,
                                0.20)),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            height: width1
                ? 450
                : width
                    ? 500
                    : 600,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, right: 20, left: 20, bottom: 80),
                child: CustomContainerres1(
                    "assets/pro2.PNG",
                    "Ice Cream App Project",
                    "https://github.com/HassaanAhmed60211/IceCreamShopApp",
                    "https://drive.google.com/file/d/1LFkIAqqk373iS8mL9HfRsJwNNS8MMpiG/view?usp=sharing",
                    "videoUrl",
                    540,
                    560,
                    0.78,
                    0.75,
                    0.72,
                    0.69,
                    0.66,
                    0.63,
                    0.60,
                    0.57,
                    0.54,
                    0.51)),
          ),
          Container(
            height: width1
                ? 480
                : width
                    ? 550
                    : 630,
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, right: 20, left: 20, bottom: 80),
                child: CustomContainerres1(
                    "assets/pro3.PNG",
                    "Calculator App Project",
                    "https://github.com/HassaanAhmed60211/digitalcalc_app",
                    "https://drive.google.com/file/d/1uCVPB6rBpKCSFvKrlWyxQZaZg5yV_QFF/view?usp=sharing",
                    "videoUrl",
                    540,
                    500,
                    0.93,
                    0.90,
                    0.87,
                    0.84,
                    0.81,
                    0.78,
                    0.72,
                    0.67,
                    0.62,
                    0.57)),
          ),
          Container(
            height: width1
                ? 390
                : width
                    ? 410
                    : 560,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, right: 20, left: 20, bottom: 40),
                child: CustomContainerres1(
                    "assets/pro4.PNG",
                    "Todo App Project",
                    "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/flutter_todoapp",
                    "https://drive.google.com/file/d/1NsJXQN27nf2spnWPrw59XnOIrw2q5mqU/view?usp=sharing",
                    "https://github.com/HassaanAhmed60211",
                    570,
                    750,
                    0.49,
                    0.46,
                    0.43,
                    0.40,
                    0.37,
                    0.34,
                    0.31,
                    0.28,
                    0.25,
                    0.22)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final fontSize = constraints.maxWidth < 400
                          ? 14.0
                          : constraints.maxWidth < 500
                              ? 18.0
                              : 22;
                      return Text(
                        "FRONT END DEVELOPMENT",
                        style: AppTextStyle.name1TextStyleres(fontSize),
                      );
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: width1
                        ? 350
                        : width
                            ? 400
                            : 450,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.bgColors,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres1(
                            "assets/uii1.PNG",
                            "Pizza Max App UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/pizzamaxapp",
                            "https://drive.google.com/file/d/1KLh5y93W5UQzcmez3N0EBnZ1NWa9Ip3B/view?usp=sharing",
                            "videoUrl",
                            395,
                            550,
                            0.61,
                            0.58,
                            0.55,
                            0.52,
                            0.49,
                            0.46,
                            0.43,
                            0.40,
                            0.37,
                            0.34)),
                  ),
                  Container(
                    height: width1
                        ? 350
                        : width
                            ? 400
                            : 450,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightBlue,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres1(
                            "assets/ui2.PNG",
                            "Music Player App UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/musicifyapp",
                            "https://drive.google.com/file/d/1-1L58vAezNvK-hZf02F3nd_P_jQfvmOB/view?usp=sharing",
                            "videoUrl",
                            395,
                            550,
                            0.61,
                            0.58,
                            0.55,
                            0.52,
                            0.49,
                            0.46,
                            0.43,
                            0.40,
                            0.37,
                            0.34)),
                  ),
                  Container(
                    height: width1
                        ? 350
                        : width
                            ? 400
                            : 450,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.bgColors,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres1(
                            "assets/u4.PNG",
                            "ShopBag App UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/shopbagapp",
                            "https://drive.google.com/file/d/1F3Zm-b1O7SS9YjQL5XFZJW_wMI6031uh/view?usp=sharing",
                            "videoUrl",
                            395,
                            550,
                            0.61,
                            0.58,
                            0.55,
                            0.52,
                            0.49,
                            0.46,
                            0.43,
                            0.40,
                            0.37,
                            0.34)),
                  ),
                  Container(
                    height: width1
                        ? 350
                        : width
                            ? 400
                            : 450,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightBlue,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            right: 20,
                            left: 20,
                            bottom: 80),
                        child: CustomContainerres1(
                            "assets/ui3.PNG",
                            "Examination Form UI",
                            "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/customwidget_datetime",
                            "https://drive.google.com/file/d/1nYISP4ZwwE-jatPazKCdoycGEpaGl3r1/view?usp=sharing",
                            "videoUrl",
                            395,
                            550,
                            0.61,
                            0.58,
                            0.55,
                            0.52,
                            0.49,
                            0.46,
                            0.43,
                            0.40,
                            0.37,
                            0.34)),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final fontSize = constraints.maxWidth < 300
                                ? 9.0
                                : constraints.maxWidth < 500
                                    ? 12.0
                                    : 16.0;
                            return Text(
                              "© 2023 Hassaan Ahmed. All rights reserved.",
                              style: AppTextStyle.nameTextStyleres(fontSize),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.07,
                  right: size.width * 0.1,
                  left: size.width * 0.1),
              child: Container(
                child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Projects",
                          style: AppTextStyle.name1TextStyle(),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            height: 560,
                            child: CustomContainer(
                                "assets/pro1.PNG",
                                "Pizza App\nProject",
                                "https://github.com/HassaanAhmed60211/PizzaApp",
                                "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                                "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                                500,
                                770)),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            height: 690,
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.07,
                  right: size.width * 0.07,
                  left: size.width * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer1(
                      "assets/pro2.PNG",
                      "Ice Cream App\nProject",
                      "https://github.com/HassaanAhmed60211/IceCreamShopApp",
                      "https://drive.google.com/file/d/1LFkIAqqk373iS8mL9HfRsJwNNS8MMpiG/view?usp=sharing",
                      "videoUrl",
                      540,
                      560),
                  CustomContainer1(
                      "assets/pro3.PNG",
                      "Calculator App\nProject",
                      "https://github.com/HassaanAhmed60211/digitalcalc_app",
                      "https://drive.google.com/file/d/1uCVPB6rBpKCSFvKrlWyxQZaZg5yV_QFF/view?usp=sharing",
                      "videoUrl",
                      540,
                      500),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            height: 680,
            child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07,
                    right: size.width * 0.1,
                    left: size.width * 0.1),
                child: CustomContainer(
                    "assets/pro4.PNG",
                    "Todo App\nProject",
                    "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/flutter_todoapp",
                    "https://drive.google.com/file/d/1NsJXQN27nf2spnWPrw59XnOIrw2q5mqU/view?usp=sharing",
                    "https://github.com/HassaanAhmed60211",
                    570,
                    750)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            height: 700,
            child: Padding(
              padding:
                  EdgeInsets.only(top: size.height * 0.07, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "FRONT END DEVELOPMENT",
                    style: AppTextStyle.name1TextStyle(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer1(
                          "assets/uii1.PNG",
                          "Pizza Max App UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/pizzamaxapp",
                          "https://drive.google.com/file/d/1KLh5y93W5UQzcmez3N0EBnZ1NWa9Ip3B/view?usp=sharing",
                          "videoUrl",
                          455,
                          610),
                      CustomContainer1(
                          "assets/ui2.PNG",
                          "Music Player App UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/musicifyapp",
                          "https://drive.google.com/file/d/1-1L58vAezNvK-hZf02F3nd_P_jQfvmOB/view?usp=sharing",
                          "videoUrl",
                          455,
                          610),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bgColors,
            height: 670,
            child: Padding(
              padding:
                  EdgeInsets.only(top: size.height * 0.07, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer1(
                          "assets/u4.PNG",
                          "ShopBag App UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/shopbagapp",
                          "https://drive.google.com/file/d/1F3Zm-b1O7SS9YjQL5XFZJW_wMI6031uh/view?usp=sharing",
                          "videoUrl",
                          455,
                          610),
                      CustomContainer1(
                          "assets/ui3.PNG",
                          "Examination Form UI",
                          "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/customwidget_datetime",
                          "https://drive.google.com/file/d/1nYISP4ZwwE-jatPazKCdoycGEpaGl3r1/view?usp=sharing",
                          "videoUrl",
                          455,
                          610),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      "© 2023 Hassaan Ahmed. All rights reserved.",
                      style: AppTextStyle.nameTextStyle(16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}

Widget rowimage1(BuildContext context, image, text) {
  return Row(
    children: [
      AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(
            text,
            textStyle: AppTextStyle.name1TextStyle(),
            speed: const Duration(milliseconds: 100),
          ),
        ],
      ),
      SizedBox(
        width: 60,
      ),
      WidgetAnimator(
        atRestEffect: WidgetRestingEffects.wave(),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: AppColors.bgColors,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 500,
          child: Image.asset(image),
        ),
      ),
    ],
  );
}

Widget rowimage2(BuildContext context, image, text) {
  return Row(children: [
    WidgetAnimator(
      atRestEffect: WidgetRestingEffects.wave(),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: AppColors.bgColors,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 570,
        child: Image.asset(image),
      ),
    ),
    SizedBox(
      width: 60,
    ),
    AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          text,
          textStyle: AppTextStyle.name1TextStyle(),
          speed: const Duration(milliseconds: 100),
        ),
      ],
    )
  ]);
}

Widget colimage2(BuildContext context, image, text, height) {
  return Column(
    children: [
      WidgetAnimator(
        atRestEffect: WidgetRestingEffects.wave(),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: AppColors.bgColors,
            borderRadius: BorderRadius.circular(15),
          ),
          height: height,
          child: Image.asset(image),
        ),
      ),
      SizedBox(
        width: 40,
      ),
      AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(
            text,
            textStyle: AppTextStyle.name4TextStyle(),
            textAlign: TextAlign.center,
            speed: const Duration(milliseconds: 100),
          ),
        ],
      ),
    ],
  );
}
