import 'package:abedok_police_clearence_page/pages/address_page.dart';
import 'package:abedok_police_clearence_page/pages/dashboard_page.dart';
import 'package:abedok_police_clearence_page/pages/image_upload_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool is_checked = false;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child:
        AppBar(
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
          leadingWidth: 70,
          titleSpacing: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top:18, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/circle.jpg'),
                ),
              ],
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
                      'Khairul Inslam',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "01700000000",
                          style: TextStyle(
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
                  IconButton(icon: Icon(Icons.search_rounded), onPressed: () {}),
                  IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: () {}),
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
                blurRadius: 4.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 130,
                  left: 130,
                  bottom: 15,
                  top: 23,
                ),
                child: Text('Purpose',
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
                endIndent: 10,
                indent: 10,
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Checkbox(value: is_checked, onChanged: (value) {}),
                      Text('Abroad',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromRGBO(142, 142, 143, 1),
                          fontFamily: 'Roboto Regular',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Checkbox(value: is_checked, onChanged: (value) {}),
                        Text('Other',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromRGBO(142, 142, 143, 1),
                            fontFamily: 'Roboto Regular',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (value){
                    return DashboardPage();
                  }));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
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
                        "Next",
                        textAlign: TextAlign.center,
                        //textScaleFactor: textScaleFactor,
                        // style: bodyRobotoTextStyle,
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
      ),
    );
  }
}
