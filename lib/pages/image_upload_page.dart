import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ImageUploadPage extends StatefulWidget {
  const ImageUploadPage({Key? key}) : super(key: key);

  @override
  State<ImageUploadPage> createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  @override
  Widget build(BuildContext context) {
    const mockupWidth = 414;
    final width = MediaQuery.of(context).size.width;
    final textScaleFactor = width / mockupWidth;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffe90d65), Color(0xffac0087)],
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: Container(
            padding: EdgeInsets.only(left: 20, bottom: 3),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      backgroundImage:
                      AssetImage('images/appbar_circle_image.png'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Khairul Islam',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                '01746586222',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.white,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none_rounded,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          right: 30,
          left: 30,
        ),
        child: Align(
          widthFactor: 0.0,
          heightFactor: 0.0,
          alignment: Alignment(1.0, 1.5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: GNav(
                onTabChange: (value) {
                  print(value);
                },
                tabBackgroundGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffe90d65), Color(0xffac0087)],
                ),
                gap: 8,
                padding: EdgeInsets.all(10),
                tabMargin: EdgeInsets.all(10),
                backgroundColor: Colors.grey.shade200,
                color: Colors.grey.shade800,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.grey.shade300,
                tabs: [
                  GButton(
                    icon: Icons.info,
                    text: 'Info',
                  ),
                  GButton(
                    icon: Icons.location_on_outlined,
                    text: 'Address',
                  ),
                  GButton(
                    icon: Icons.feed_sharp,
                    text: 'Documents',
                  ),
                ],
              )),
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(
                top: 25,
                right: 25,
                left: 25,
              ),
            child: Column(
              children: [
                //Photo Upload..............................................
                SizedBox(
                  height: 48,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: const Color.fromRGBO(226, 226, 226, 1),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(6.0)),
                    color: Colors.white,
                    child: Container(
                      color: const Color.fromRGBO(242, 242, 242, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              'Photo',
                              style: TextStyle(
                                  color: const Color.fromRGBO(119, 122, 124, 1),
                                  fontSize: 14,
                                  fontFamily: "Poppins Regular"),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                            height: 31,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color:
                                      const Color.fromRGBO(226, 226, 226, 1),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(6.0)),
                              color: Colors.white,
                              child: InkWell(
                                onTap: (){},
                                child: Center(
                                  child: AutoSizeText(
                                    'Upload',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            161, 161, 161, 1),
                                        fontSize: 16,
                                        fontFamily: "Roboto Regular"),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Icon(Icons.camera_alt_outlined,
                                color: Color.fromRGBO(119, 122, 124, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //NID Upload..................................................
                SizedBox(
                  height: 48,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: const Color.fromRGBO(226, 226, 226, 1),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(6.0)),
                    color: Colors.white,
                    child: Container(
                      color: const Color.fromRGBO(242, 242, 242, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              'NID',
                              style: TextStyle(
                                  color: const Color.fromRGBO(119, 122, 124, 1),
                                  fontSize: 14,
                                  fontFamily: "Poppins Regular"),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                            height: 31,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color:
                                      const Color.fromRGBO(226, 226, 226, 1),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(6.0)),
                              color: Colors.white,
                              child: InkWell(
                                onTap: () async {},
                                child: Center(
                                  child: AutoSizeText(
                                    'Upload',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            161, 161, 161, 1),
                                        fontSize: 16,
                                        fontFamily: "Roboto Regular"),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          InkWell(
                            onTap: () async {},
                            child: const Icon(Icons.camera_alt_outlined,
                                color: Color.fromRGBO(119, 122, 124, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //Passport Upload.............................................
                SizedBox(
                  height: 48,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: const Color.fromRGBO(226, 226, 226, 1),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(6.0)),
                    color: Colors.white,
                    child: Container(
                      color: const Color.fromRGBO(242, 242, 242, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              'Passport',
                              style: TextStyle(
                                  color: const Color.fromRGBO(119, 122, 124, 1),
                                  fontSize: 14,
                                  fontFamily: "Poppins Regular"),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                            height: 31,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color:
                                      const Color.fromRGBO(226, 226, 226, 1),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(6.0)),
                              color: Colors.white,
                              child: InkWell(
                                onTap: () async {},
                                child: Center(
                                  child: AutoSizeText(
                                    'Upload',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            161, 161, 161, 1),
                                        fontSize: 16,
                                        fontFamily: "Roboto Regular"),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          InkWell(
                            onTap: () async {},
                            child: const Icon(Icons.camera_alt_outlined,
                                color: Color.fromRGBO(119, 122, 124, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15 / mockupWidth * width,
                ),
                //Birth Certificate Upload.......................................
                SizedBox(
                  height: 48,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: const Color.fromRGBO(226, 226, 226, 1),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(6.0)),
                    color: Colors.white,
                    child: Container(
                      color: const Color.fromRGBO(242, 242, 242, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              'Birth Certificate',
                              style: TextStyle(
                                  color: const Color.fromRGBO(119, 122, 124, 1),
                                  fontSize: 14,
                                  fontFamily: "Poppins Regular"),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                            height: 31,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color:
                                      const Color.fromRGBO(226, 226, 226, 1),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(6.0)),
                              color: Colors.white,
                              child: InkWell(
                                onTap: () async {},
                                child: Center(
                                  child: AutoSizeText(
                                    'Upload',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            161, 161, 161, 1),
                                        fontSize: 16,
                                        fontFamily: "Roboto Regular"),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          InkWell(
                            onTap: () async {},
                            child: const Icon(Icons.camera_alt_outlined,
                                color: Color.fromRGBO(119, 122, 124, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //Ward Councilor Certificate upload............................
                SizedBox(
                  height: 48,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: const Color.fromRGBO(226, 226, 226, 1),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(6.0)),
                    color: Colors.white,
                    child: Container(
                      color: const Color.fromRGBO(242, 242, 242, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              'Ward Councilor Certificate',
                              style: TextStyle(
                                  color: const Color.fromRGBO(119, 122, 124, 1),
                                  fontSize: 14,
                                  fontFamily: "Poppins Regular"),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                            height: 31,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color:
                                      const Color.fromRGBO(226, 226, 226, 1),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(6.0)),
                              color: Colors.white,
                              child: InkWell(
                                onTap: () async {},
                                child: Center(
                                  child: AutoSizeText(
                                    'Upload',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            161, 161, 161, 1),
                                        fontSize: 16,
                                        fontFamily: "Roboto Regular"),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          InkWell(
                            onTap: () async {},
                            child: const Icon(Icons.camera_alt_outlined,
                                color: Color.fromRGBO(119, 122, 124, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 66,
                ),
                //Button.....................................................
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 250,
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
                            "Next",
                            textAlign: TextAlign.center,
                            textScaleFactor: textScaleFactor,
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
                ),
              ],
            ),
          ),
      ),
    );
  }
}
