import 'package:abedok_police_clearence_page/pages/address_page.dart';
import 'package:abedok_police_clearence_page/pages/country_scroll_page.dart';
import 'package:abedok_police_clearence_page/pages/dashboard_page.dart';
import 'package:abedok_police_clearence_page/pages/image_upload_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const mockupWidth = 414;
    final width = MediaQuery.of(context).size.width;
    final textScaleFactor = width / mockupWidth;
    bool is_checked = false;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe90d65),
                  Color(0xffac0087),
                ],
              ),
            ),
          ),
          leadingWidth: 60,
          titleSpacing: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 18, left: 5),
            child: SleekCircularSlider(
              appearance: CircularSliderAppearance(
                counterClockwise: true,
                startAngle: 270,
                size: 50,
                angleRange: 360,
                customWidths: CustomSliderWidths(
                  handlerSize: 5,
                  progressBarWidth: 3,
                ),
                customColors: CustomSliderColors(
                  progressBarColor: Colors.green,
                  dotColor: Colors.green,
                ),
              ),
              min: 0,
              max: 100,
              initialValue: 60,
              innerWidget: (percentage) {
                return Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/circle.jpg'),
                    radius: 17,
                  ),
                );
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Khairul Islam',
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular.ttf',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "01700000000",
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular.ttf',
                            fontSize: 11,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.search_rounded), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.notifications_none_outlined),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 250,
          bottom: 50,
          left: 25,
          right: 25,
        ),
        child: Container(
          height: 194,
          width: 362,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                  bottom: 15,
                  top: 23,
                ),
                child: Text(
                  'Hi! What’s the purpose of your PCC?',
                  style: TextStyle(
                    color: const Color(0xffbe047d),
                    fontFamily: "Poppins Medium",
                  ),
                ),
              ),
              Divider(
                height: 0.0,
                color: Colors.grey.shade300,
                thickness: 2,
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CountryScrollPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xffe90d65), Color(0xffac0087)],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              "Abroad",
                              textAlign: TextAlign.center,
                              textScaleFactor: textScaleFactor,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Poppins SemiBold",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text(
                                      'Please contact your nearest Police Station',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffac0087),
                                      )),
                                  contentPadding: EdgeInsets.all(40),
                                ));
                      },
                      child: Container(
                        width: 100,
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xffe90d65), Color(0xffac0087)],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              "Others",
                              textAlign: TextAlign.center,
                              textScaleFactor: textScaleFactor,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Poppins SemiBold",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
