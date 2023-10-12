import 'dart:async';
import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio_website/util/textstyle.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';
import 'package:pretty_animated_buttons/widgets/pretty_shadow_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomButton extends StatefulWidget {
  IconData icon;
  final Function onpressed;
  CustomButton(this.icon, this.onpressed, {super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          // Add your button click logic here
          widget.onpressed();
        },
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 10,
            maxWidth: 100,
          ),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: _isHovered
                    ? Border.all(color: Colors.lightBlue, width: 2)
                    : Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                color: _isHovered ? Colors.transparent : Colors.transparent,
              ),
              child: WidgetAnimator(
                atRestEffect: WidgetRestingEffects.swing(),
                child: Icon(
                  widget.icon,
                  size: 30,
                  color: _isHovered ? Colors.lightBlue : Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}

class CustomButtonOne extends StatefulWidget {
  String text;
  double fontsize;
  final Function onpressed;
  CustomButtonOne(this.text, this.fontsize, this.onpressed, {super.key});

  @override
  State<CustomButtonOne> createState() => _CustomButtonOneState();
}

class _CustomButtonOneState extends State<CustomButtonOne> {
  bool _isHovered = false;
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {},
        child: PrettyWaveButton(
          backgroundColor: _isHovered ? Colors.lightBlue : Colors.white,
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: widget.fontsize,
              fontWeight: FontWeight.bold,
              color: _isHovered ? Colors.white : Colors.black,
            ),
          ),
          onPressed: () {
            widget.onpressed();
          },
        ),
      ),
    );
  }
}

class CustomButtonOneres extends StatefulWidget {
  String text;
  double fontsize;
  final Function onpressed;
  CustomButtonOneres(this.text, this.fontsize, this.onpressed, {super.key});

  @override
  State<CustomButtonOneres> createState() => _CustomButtonOneresState();
}

class _CustomButtonOneresState extends State<CustomButtonOneres> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: PrettyWaveButton(
        backgroundColor: _isHovered ? Colors.lightBlue : Colors.white,
        onPressed: () {
          setState(() {});
          _isHovered = true;
          Timer(Duration(seconds: 2), () {
            widget.onpressed();
            _isHovered = false;
            setState(() {});
          });
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.fontsize,
            fontWeight: FontWeight.bold,
            color: _isHovered ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width;
  CustomContainer(this.image, this.text, this.githubLink, this.imageUrl,
      this.videoUrl, this.height, this.width,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            // Add your button click logic here
          },
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(15),
              ),
              height: widget.height,
              width: widget.width, // Adjust this as needed
              child: _isHovered
                  ? Container(
                      color: _isHovered
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.githubLink);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("Github Code"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.imageUrl);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("View Image"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              widget.text,
              textStyle: AppTextStyle.name4TextStyle(),
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomContainerres extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width;
  CustomContainerres(this.image, this.text, this.githubLink, this.imageUrl,
      this.videoUrl, this.height, this.width,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainerresState createState() => _CustomContainerresState();
}

class _CustomContainerresState extends State<CustomContainerres> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width > 475 &&
        MediaQuery.of(context).size.width <= 500;
    final width1 = MediaQuery.of(context).size.width > 450 &&
        MediaQuery.of(context).size.width <= 475;

    final width2 = MediaQuery.of(context).size.width > 425 &&
        MediaQuery.of(context).size.width <= 450;
    final width3 = MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width <= 425;
    final width4 = MediaQuery.of(context).size.width > 375 &&
        MediaQuery.of(context).size.width <= 400;
    final width5 = MediaQuery.of(context).size.width > 350 &&
        MediaQuery.of(context).size.width <= 375;

    final width6 = MediaQuery.of(context).size.width > 325 &&
        MediaQuery.of(context).size.width <= 350;
    final width7 = MediaQuery.of(context).size.width > 300 &&
        MediaQuery.of(context).size.width <= 325;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Add your button click logic here
                if (mounted) {
                  setState(() {
                    _isHovered = true;
                  });
                  Timer(Duration(seconds: 5), () {
                    if (mounted) {
                      setState(() {
                        _isHovered = false;
                      });
                    }
                  });
                }
              },
              child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHovered = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit
                              .fitWidth, // You can choose the fit mode that suits your design
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: widget.height,
                          maxWidth: widget.width,
                          minHeight: 100,
                          minWidth: 100,
                        ),
                        child: _isHovered
                            ? Container(
                                color: _isHovered
                                    ? Colors.grey.withOpacity(0.2)
                                    : Colors.transparent,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () async {
                                          final Uri _url =
                                              Uri.parse(widget.githubLink);
                                          if (!await launchUrl(_url)) {
                                            throw Exception(
                                                'Could not launch $_url');
                                          }
                                        },
                                        child: Text("Github Code"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          final Uri _url =
                                              Uri.parse(widget.imageUrl);
                                          if (!await launchUrl(_url)) {
                                            throw Exception(
                                                'Could not launch $_url');
                                          }
                                        },
                                        child: Text("View Image"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            final fontSize = constraints.maxWidth < 500
                ? 20.0
                : constraints.maxWidth < 600
                    ? 30.0
                    : 38;
            return AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  widget.text,
                  textStyle: AppTextStyle.name4TextStyleres(fontSize),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class CustomContainerres1 extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width,
      width1,
      width2,
      width3,
      width4,
      width5,
      width6,
      width7,
      width8,
      width9;
  CustomContainerres1(
      this.image,
      this.text,
      this.githubLink,
      this.imageUrl,
      this.videoUrl,
      this.height,
      this.width,
      this.width1,
      this.width2,
      this.width3,
      this.width4,
      this.width5,
      this.width6,
      this.width7,
      this.width8,
      this.width9,
      double d,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainerres1State createState() => _CustomContainerres1State();
}

class _CustomContainerres1State extends State<CustomContainerres1> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width > 475 &&
        MediaQuery.of(context).size.width <= 500;
    final width1 = MediaQuery.of(context).size.width > 450 &&
        MediaQuery.of(context).size.width <= 475;

    final width2 = MediaQuery.of(context).size.width > 425 &&
        MediaQuery.of(context).size.width <= 450;
    final width3 = MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width <= 425;
    final width4 = MediaQuery.of(context).size.width > 375 &&
        MediaQuery.of(context).size.width <= 400;
    final width5 = MediaQuery.of(context).size.width > 350 &&
        MediaQuery.of(context).size.width <= 375;

    final width6 = MediaQuery.of(context).size.width > 325 &&
        MediaQuery.of(context).size.width <= 350;
    final width7 = MediaQuery.of(context).size.width > 300 &&
        MediaQuery.of(context).size.width <= 325;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Add your button click logic here
                if (mounted) {
                  setState(() {
                    _isHovered = true;
                  });
                  Timer(Duration(seconds: 5), () {
                    if (mounted) {
                      setState(() {
                        _isHovered = false;
                      });
                    }
                  });
                }
              },
              child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHovered = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit
                              .fitWidth, // You can choose the fit mode that suits your design
                        ),
                      ),
                      Container(
                        width: widget.width,
                        height: width
                            ? widget.width * widget.width1
                            : width1
                                ? widget.width * widget.width2
                                : width2
                                    ? widget.width * widget.width3
                                    : width3
                                        ? widget.width * widget.width4
                                        : width4
                                            ? widget.width * widget.width5
                                            : width5
                                                ? widget.width * widget.width6
                                                : width6
                                                    ? widget.width *
                                                        widget.width7
                                                    : width7
                                                        ? widget.width *
                                                            widget.width8
                                                        : widget.width *
                                                            widget.width9,
                        child: _isHovered
                            ? Container(
                                height: width
                                    ? widget.width * widget.width1
                                    : width1
                                        ? widget.width * widget.width2
                                        : width2
                                            ? widget.width * widget.width3
                                            : width3
                                                ? widget.width * widget.width4
                                                : width4
                                                    ? widget.width *
                                                        widget.width5
                                                    : width5
                                                        ? widget.width *
                                                            widget.width6
                                                        : width6
                                                            ? widget.width *
                                                                widget.width7
                                                            : width7
                                                                ? widget.width *
                                                                    widget
                                                                        .width8
                                                                : widget.width *
                                                                    widget
                                                                        .width9,
                                color: _isHovered
                                    ? Colors.grey.withOpacity(0.2)
                                    : Colors.transparent,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () async {
                                          final Uri _url =
                                              Uri.parse(widget.githubLink);
                                          if (!await launchUrl(_url)) {
                                            throw Exception(
                                                'Could not launch $_url');
                                          }
                                        },
                                        child: Text("Github Code"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          final Uri _url =
                                              Uri.parse(widget.imageUrl);
                                          if (!await launchUrl(_url)) {
                                            throw Exception(
                                                'Could not launch $_url');
                                          }
                                        },
                                        child: Text("View Image"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            final fontSize = constraints.maxWidth < 400
                ? 17.0
                : constraints.maxWidth < 500
                    ? 28.0
                    : 31;
            return AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  widget.text,
                  textStyle: AppTextStyle.name4TextStyleres(fontSize),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class CustomContainer1 extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width;
  CustomContainer1(this.image, this.text, this.githubLink, this.imageUrl,
      this.videoUrl, this.height, this.width,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainer1State createState() => _CustomContainer1State();
}

class _CustomContainer1State extends State<CustomContainer1> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            // Add your button click logic here
          },
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(15),
              ),
              height: widget.height,
              width: widget.width, // Adjust this as needed
              child: _isHovered
                  ? Container(
                      color: _isHovered
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.githubLink);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("Github Code"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.imageUrl);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("View Image"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              widget.text,
              textStyle: AppTextStyle.name4TextStyle(),
              textAlign: TextAlign.center,
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomContainer1res extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width;
  CustomContainer1res(this.image, this.text, this.githubLink, this.imageUrl,
      this.videoUrl, this.height, this.width,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainer1resState createState() => _CustomContainer1resState();
}

class _CustomContainer1resState extends State<CustomContainer1res> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            if (mounted) {
              setState(() {
                _isHovered = true;
              });
              Timer(Duration(seconds: 5), () {
                if (mounted) {
                  setState(() {
                    _isHovered = false;
                  });
                }
              });
            }
          },
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(15),
              ),
              height: widget.height,
              width: widget.width, // Adjust this as needed
              child: _isHovered
                  ? Container(
                      color: _isHovered
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.githubLink);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("Github Code"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.imageUrl);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("View Image"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              widget.text,
              textStyle: AppTextStyle.name4TextStyle(),
              textAlign: TextAlign.center,
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ],
    );
  }
}

Future<void> _launchUrl() async {}
