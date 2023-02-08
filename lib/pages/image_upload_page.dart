import 'package:abedok_police_clearence_page/pages/address_page.dart';
import 'package:abedok_police_clearence_page/pages/home_page.dart';
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
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 40 / mockupWidth * width,
          width: 40 / mockupWidth * width,
          margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child:
          Card(
            elevation: 2,
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (value){
                  return AddressPage();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 15.0,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: AutoSizeText(
          "Image Upload Page",
          maxLines: 1,
          textScaleFactor: textScaleFactor,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color(0xffbe047d),
            fontSize: 17,
            fontFamily: "Poppins SemiBold",
          ),
        ),
        actions: [
          Card(
            margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            elevation: 0,
            color: Colors.white,
            child: InkWell(
              onTap: (){},
              child: Container(
                child: Image(image: AssetImage('images/ic_notification.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ],
      ), bottomNavigationBar: Padding(
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
                top: 22,
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
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (value){
                        return HomePage();
                      }));
                    },
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