import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    bool is_checked = false;
    const mockupWidth = 414;
    const inputBGStrokeColor = Color.fromRGBO(223, 223, 223, 1);
    final width = MediaQuery.of(context).size.width;
    final textScaleFactor = width / mockupWidth;
    final alphanumeric = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
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
                    left: 10,
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
          padding: const EdgeInsets.only(
            bottom: 0,
            top: 25,
            left: 25,
            right: 25,
          ),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  //Emergency Contact............................................
                  Text(
                    "Emergency Contact (As Per Passport)",
                    style: TextStyle(
                      color: const Color(0xffbe047d),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontFamily: "Poppins Medium",
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //District..................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'District/Metro',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Village/Town/Road/House/Flat.................................
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: false,
                      hoverColor: Colors.white,
                      hintText: 'Village/Town/Road/House/Flat',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                    // validator: (text) {
                    //   var match = alphanumeric.hasMatch(text!);
                    //   if (text.isEmpty) {
                    //     return "Enter your Address!";
                    //   } else if (!match) {
                    //     return "Name must contain letters only !";
                    //   }
                    //   return null;
                    // },
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Thana...................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Thana',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Post Office................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Post Office',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Postal Code..................................................
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: false,
                      hoverColor: Colors.white,
                      hintText: 'Postal Code',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                    validator: (text) {
                      var match = alphanumeric.hasMatch(text!);
                      if (text.isEmpty) {
                        return "Enter your Postal Code";
                      } else if (!match) {
                        return "Must contain number only !";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Permanent Address.........................................
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Permanent Address",
                            textScaleFactor: textScaleFactor,
                            style: TextStyle(
                              color: const Color(0xffbe047d),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              fontFamily: "Poppins Medium",
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: const Color(0xffbe047d),
                              onChanged: (value) {},
                              value: is_checked,
                            ),
                            Text(
                              "Same as Present Address",
                              textScaleFactor: textScaleFactor,
                              style: TextStyle(
                                color: const Color(0xff8e8e8f),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //District..................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'District/Metro',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Village/Thana/Road/House/Flat..............................
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: false,
                      hoverColor: Colors.white,
                      hintText: 'Village/Town/Road/House/Flat',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                    // validator: (text) {
                    //   var match = alphanumeric.hasMatch(text!);
                    //   if (text.isEmpty) {
                    //     return "Enter your Full Name!";
                    //   } else if (!match) {
                    //     return "Name must contain letters only !";
                    //   }
                    //   return null;
                    // },
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Thana.....................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Thana',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Post Office...............................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Post Office',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Postal Code..................................................
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: false,
                      hoverColor: Colors.white,
                      hintText: 'Postal Code',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                    validator: (text) {
                      var match = alphanumeric.hasMatch(text!);
                      if (text.isEmpty) {
                        return "Enter your Postal Code!";
                      } else if (!match) {
                        return "Must contain number only !";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Present Address...............................................
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Present Address",
                            textScaleFactor: textScaleFactor,
                            style: TextStyle(
                              color: const Color(0xffbe047d),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              fontFamily: "Poppins Medium",
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: const Color(0xffbe047d),
                              onChanged: (value) {},
                              value: is_checked,
                            ),
                            Text(
                              "Same as Present Address",
                              textScaleFactor: textScaleFactor,
                              style: TextStyle(
                                color: const Color(0xff8e8e8f),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //District..................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'District/Metro',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Village/Town/Road/House/Flat...............................
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: false,
                      hoverColor: Colors.white,
                      hintText: 'Village/Town/Road/House/Flat',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                    // validator: (text) {
                    //   var match = alphanumeric.hasMatch(text!);
                    //   if (text.isEmpty) {
                    //     return "Enter your Full Name!";
                    //   } else if (!match) {
                    //     return "Name must contain letters only !";
                    //   }
                    //   return null;
                    // },
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Thana.....................................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Thana',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Post Office...............................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Post Office',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Postal Code.................................................
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: inputBGStrokeColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: false,
                      hoverColor: Colors.white,
                      hintText: 'Postal Code',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                    validator: (text) {
                      var match = alphanumeric.hasMatch(text!);
                      if (text.isEmpty) {
                        return "Enter your Postal Code!";
                      } else if (!match) {
                        return "Must contain nnumber only !";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 42.84,
                  ),
                  //Delivery Type..............................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Delivery Type',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.84,
                  ),
                  //Delivery From..............................................
                  SizedBox(
                    height: 38.16,
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Delivery From',
                                softWrap: false,
                                textScaleFactor: textScaleFactor,
                                // style: bodyRobotoTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(142, 142, 143, 1),
                                  fontFamily: 'Roboto Regular',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //Button........................................................
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
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
