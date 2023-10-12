import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio_website/about.dart';
import 'package:myportfolio_website/project.dart';
import 'package:myportfolio_website/util/CustomButton.dart';
import 'package:myportfolio_website/util/colors.dart';
import 'package:myportfolio_website/util/textstyle.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'dart:html' as html;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController = ScrollController(
    initialScrollOffset: 0.0, // Set the initial position to 0 (top)
  );
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColors,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        titleSpacing: 30,
        backgroundColor: AppColors.bgColors,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Portfolio",
              style: AppTextStyle.logoTextStyle(),
            ),
            const Spacer(),
            _buildNavigationMenu(),
          ],
        ),
      ),
      body: _responsiveBody(),
    );
  }

  Widget _responsiveBody() {
    final Size size = MediaQuery.of(context).size;
    final isMobile = MediaQuery.of(context).size.width > 990 &&
        MediaQuery.of(context).size.width <= 1300;
    final isMobile1 = MediaQuery.of(context).size.width <= 990;
    if (isMobile) {
      return ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: size.height * 0.1,
            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            LayoutBuilder(
                              builder: (context, constraints) {
                                final fontSize = constraints.maxWidth < 700
                                    ? 16.0
                                    : constraints.maxWidth < 900
                                        ? 19.0
                                        : 24;
                                return Text(
                                  "Hello, It's Me.",
                                  style: AppTextStyle.nameTextStyle(fontSize),
                                );
                              },
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                final fontSize = constraints.maxWidth < 700
                                    ? 21.0
                                    : constraints.maxWidth < 900
                                        ? 31.0
                                        : 38;
                                return Text(
                                  "HASSAAN AHMED",
                                  style:
                                      AppTextStyle.name1TextStyleres(fontSize),
                                );
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    final fontSize = constraints.maxWidth < 700
                                        ? 16.0
                                        : constraints.maxWidth < 900
                                            ? 19.0
                                            : 24;
                                    return Text(
                                      "And I am a ",
                                      style: AppTextStyle.nameTextStyleres(
                                          fontSize),
                                    );
                                  },
                                ),
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    final fontSize = constraints.maxWidth < 700
                                        ? 18.0
                                        : constraints.maxWidth < 900
                                            ? 21.0
                                            : 26;
                                    return AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          'Flutter Developer',
                                          textStyle:
                                              AppTextStyle.name2TextStyleres(
                                                  fontSize),
                                          speed:
                                              const Duration(milliseconds: 100),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                final fontSize = constraints.maxWidth < 700
                                    ? 11.0
                                    : constraints.maxWidth < 900
                                        ? 12.0
                                        : 15;
                                return Text(
                                  "I am a passionate Flutter developer with a keen eye for creating responsive \nand visually appealing user interfaces. My expertise lies in turning ideas into  \nreality, transforming design concepts into interactive and engaging apps.",
                                  style: AppTextStyle.nameTextStyle(fontSize),
                                );
                              },
                            ),
                          ],
                        ),
                        Spacer(),
                        ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 100,
                              maxWidth: 350,
                            ),
                            child:
                                Image.asset("assets/Untitled design (8).png")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(FontAwesomeIcons.github, () {
                          final Uri _url =
                              Uri.parse("https://github.com/HassaanAhmed60211");

                          launchUrl(_url);
                        }),
                        CustomButton(FontAwesomeIcons.linkedin, () {
                          final Uri _url = Uri.parse(
                              "https://www.linkedin.com/in/hassaanahmed113/");

                          launchUrl(_url);
                        }),
                        CustomButton(FontAwesomeIcons.facebook, () {
                          final Uri _url = Uri.parse(
                              "https://www.facebook.com/hassaanahmed113");

                          launchUrl(_url);
                        }),
                        CustomButton(FontAwesomeIcons.instagram, () {
                          final Uri _url = Uri.parse(
                              "https://www.instagram.com/hassaan_ahmed113");

                          launchUrl(_url);
                        })
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButtonOneres("Download CV", 17, () {
                      final Uri _url = Uri.parse(
                          "https://drive.google.com/file/d/1L8wC2OmqlV_oKPfGK48dQ0ZGjsudiwE5/view?usp=sharing");

                      launchUrl(_url);
                    }),
                  ],
                ),
              ),
            ),
          ),
          About(),
          Project(),
        ],
      );
    } else if (isMobile1) {
      return ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LayoutBuilder(
                              builder: (context, constraints) {
                                final fontSize = constraints.maxWidth < 700
                                    ? 16.0
                                    : constraints.maxWidth < 900
                                        ? 19.0
                                        : 24;
                                return Text(
                                  "Hello, It's Me.",
                                  style: AppTextStyle.nameTextStyle(fontSize),
                                );
                              },
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                final fontSize = constraints.maxWidth < 700
                                    ? 21.0
                                    : constraints.maxWidth < 900
                                        ? 31.0
                                        : 38;
                                return Text(
                                  "HASSAAN AHMED",
                                  style:
                                      AppTextStyle.name1TextStyleres(fontSize),
                                );
                              },
                            ),
                            Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    final fontSize = constraints.maxWidth < 700
                                        ? 19.0
                                        : constraints.maxWidth < 900
                                            ? 24.0
                                            : 29;
                                    return Text(
                                      "And I am a ",
                                      style: AppTextStyle.nameTextStyleres(
                                          fontSize),
                                    );
                                  },
                                ),
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    final fontSize = constraints.maxWidth < 700
                                        ? 19.0
                                        : constraints.maxWidth < 900
                                            ? 24.0
                                            : 29;
                                    return AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          'Flutter Developer',
                                          textStyle:
                                              AppTextStyle.name2TextStyleres(
                                                  fontSize),
                                          speed:
                                              const Duration(milliseconds: 100),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                final fontSize = constraints.maxWidth < 700
                                    ? 11.0
                                    : constraints.maxWidth < 900
                                        ? 12.0
                                        : 15;
                                return Text(
                                  "I am a passionate Flutter developer with a keen eye for creating responsive \nand visually appealing user interfaces. My expertise lies in turning ideas into  \nreality, transforming design concepts into interactive and engaging apps.",
                                  style: AppTextStyle.nameTextStyle(fontSize),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 100,
                          maxWidth: 350,
                        ),
                        child: Image.asset("assets/Untitled design (8).png")),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      runSpacing: 10,
                      children: [
                        CustomButton(FontAwesomeIcons.github, () {
                          final Uri _url =
                              Uri.parse("https://github.com/HassaanAhmed60211");

                          launchUrl(_url);
                        }),
                        CustomButton(FontAwesomeIcons.linkedin, () {
                          final Uri _url = Uri.parse(
                              "https://www.linkedin.com/in/hassaanahmed113/");

                          launchUrl(_url);
                        }),
                        CustomButton(FontAwesomeIcons.facebook, () {
                          final Uri _url = Uri.parse(
                              "https://www.facebook.com/hassaanahmed113");

                          launchUrl(_url);
                        }),
                        CustomButton(FontAwesomeIcons.instagram, () {
                          final Uri _url = Uri.parse(
                              "https://www.instagram.com/hassaan_ahmed113");

                          launchUrl(_url);
                        })
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButtonOneres("Download CV", 17, () {
                      final Uri _url = Uri.parse(
                          "https://drive.google.com/file/d/1L8wC2OmqlV_oKPfGK48dQ0ZGjsudiwE5/view?usp=sharing");

                      launchUrl(_url);
                    }),
                  ],
                ),
              ),
            ),
          ),
          About(),
          Project(),
        ],
      );
    } else {
      return ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.1,
                right: size.width * 0.08,
                left: size.width * 0.08),
            child: Container(
              height: 600,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 120),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello, It's Me.",
                          style: AppTextStyle.nameTextStyle(26),
                        ),
                        Text(
                          "HASSAAN AHMED",
                          style: AppTextStyle.name1TextStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              "And I am a ",
                              style: AppTextStyle.nameTextStyle(26),
                            ),
                            AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText(
                                  'Flutter Developer',
                                  textStyle: AppTextStyle.name2TextStyle(),
                                  speed: const Duration(milliseconds: 100),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "I am a passionate Flutter developer with a keen eye for creating responsive \nand visually appealing user interfaces. My expertise lies in turning ideas into  \nreality, transforming design concepts into interactive and engaging apps.",
                          style: AppTextStyle.nameTextStyle(16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CustomButton(FontAwesomeIcons.github, () {
                              final Uri _url = Uri.parse(
                                  "https://github.com/HassaanAhmed60211");

                              launchUrl(_url);
                            }),
                            CustomButton(FontAwesomeIcons.linkedin, () {
                              final Uri _url = Uri.parse(
                                  "https://www.linkedin.com/in/hassaanahmed113/");

                              launchUrl(_url);
                            }),
                            CustomButton(FontAwesomeIcons.facebook, () {
                              final Uri _url = Uri.parse(
                                  "https://www.facebook.com/hassaanahmed113");

                              launchUrl(_url);
                            }),
                            CustomButton(FontAwesomeIcons.instagram, () {
                              final Uri _url = Uri.parse(
                                  "https://www.instagram.com/hassaan_ahmed113");

                              launchUrl(_url);
                            })
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomButtonOne("Download CV", 17, () {
                          final Uri _url = Uri.parse(
                              "https://drive.google.com/file/d/1L8wC2OmqlV_oKPfGK48dQ0ZGjsudiwE5/view?usp=sharing");

                          launchUrl(_url);
                        }),
                      ],
                    ),
                    Spacer(),
                    WidgetAnimator(
                      atRestEffect: WidgetRestingEffects.wave(),
                      child: Container(
                          height: 500,
                          child: Image.asset("assets/Untitled design (8).png")),
                    ),
                  ],
                ),
              ),
            ),
          ),
          About(),
          Project(),
        ],
      );
    }
  }

  Widget _buildNavigationMenu() {
    final isMobile =
        MediaQuery.of(context).size.width <= 600; // Define your breakpoint

    if (isMobile) {
      return PopupMenuButton(
        key: _menuKey,
        icon: Icon(Icons.more_vert),
        itemBuilder: (context) {
          return [
            _buildPopupMenuItem("Home", 0),
            _buildPopupMenuItem("About", 1),
            _buildPopupMenuItem("Projects", 2),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            // Scroll to Home
            _scrollController.animateTo(
              0, // Scroll to the top (home part)
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          } else if (value == 1) {
            // Scroll to About
            final double aboutPosition =
                MediaQuery.of(context).size.height * 0.1 + 600.0 + 30.0;
            _scrollController.animateTo(
              aboutPosition, // Scroll to the "About" section
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          } else if (value == 2) {
            // Scroll to Projects
            final double aboutPosition =
                MediaQuery.of(context).size.height * 0.1 + 600.0 + 30.0;
            final double projectsPosition =
                aboutPosition + 820.0; // You can adjust this offset as needed
            _scrollController.animateTo(
              projectsPosition, // Scroll to the "Projects" section
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        },
      );
    } else {
      return Row(
        children: [
          InkWell(
            onTap: () {
              // Scroll to Home
              _scrollController.animateTo(
                0, // Scroll to the top (home part)
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              "Home",
              style: AppTextStyle.headerTextStyle(),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            onTap: () {
              // Scroll to About
              final double aboutPosition =
                  MediaQuery.of(context).size.height * 0.1 + 600.0 + 30.0;
              _scrollController.animateTo(
                aboutPosition, // Scroll to the "About" section
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              "About",
              style: AppTextStyle.headerTextStyle(),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            onTap: () {
              // Scroll to Projects
              final double aboutPosition =
                  MediaQuery.of(context).size.height * 0.1 + 600.0 + 30.0;
              final double projectsPosition =
                  aboutPosition + 820.0; // You can adjust this offset as needed
              _scrollController.animateTo(
                projectsPosition, // Scroll to the "Projects" section
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              "Projects",
              style: AppTextStyle.headerTextStyle(),
            ),
          ),
        ],
      );
    }
  }

  PopupMenuItem<int> _buildPopupMenuItem(String text, int value) {
    return PopupMenuItem<int>(
      value: value,
      child: Text(text),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
