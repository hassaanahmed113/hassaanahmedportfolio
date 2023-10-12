import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio_website/util/CustomButton.dart';
import 'package:myportfolio_website/util/textstyle.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return _responsive();
  }

  Widget _responsive() {
    final Size size = MediaQuery.of(context).size;

    final isMobile = MediaQuery.of(context).size.width <= 1530;
    if (isMobile) {
      return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.lightBlue[800],
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.1,
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    atRestEffect: WidgetRestingEffects.wave(),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0, right: 30, left: 30),
                      child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            maxWidth: 250,
                          ),
                          child: Image.asset("assets/Untitled design (9).png")),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      maxWidth: 800,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                "About Me",
                                style: AppTextStyle.name1TextStyleres(fontSize),
                              );
                            },
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              final fontSize = constraints.maxWidth < 700
                                  ? 25.0
                                  : constraints.maxWidth < 900
                                      ? 35.0
                                      : 42;
                              return AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    'Flutter Developer!',
                                    textStyle: AppTextStyle.name3TextStyleres(
                                        fontSize),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                ],
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              final fontSize = constraints.maxWidth < 700
                                  ? 12.0
                                  : constraints.maxWidth < 900
                                      ? 16.0
                                      : 24;
                              return Text(
                                "I am currently pursuing a Bachelor's degree in Computer Science, equipping me with a strong foundation \nin software development. Over the past 1.5 years, I have immersed myself in the world of Flutter \ndevelopment, where I have honed my skills in crafting high-quality, cross-platform mobile applications.\nI also have experience as a graphic designer. This dual expertise allows me to not only engineer \nrobust and efficient apps but also design visually stunning and user-friendly interfaces.",
                                style: AppTextStyle.nameTextStyle(fontSize),
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        height: 800,
        width: MediaQuery.of(context).size.width,
        color: Colors.lightBlue[800],
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.1,
              right: size.width * 0.1,
              left: size.width * 0.1),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 120),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    atRestEffect: WidgetRestingEffects.wave(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                          height: 350,
                          child: Image.asset("assets/Untitled design (9).png")),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "About Me",
                        style: AppTextStyle.name1TextStyle(),
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText(
                            'Flutter Developer!',
                            textStyle: AppTextStyle.name3TextStyle(),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "I am currently pursuing a Bachelor's degree in Computer Science, equipping me with a strong foundation \nin software development. Over the past 1.5 years, I have immersed myself in the world of Flutter \ndevelopment, where I have honed my skills in crafting high-quality, cross-platform mobile applications.\nI also have experience as a graphic designer. This dual expertise allows me to not only engineer \nrobust and efficient apps but also design visually stunning and user-friendly interfaces.",
                        style: AppTextStyle.nameTextStyle(16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
