import 'package:abedok_police_clearence_page/pages/address_page.dart';
import 'package:abedok_police_clearence_page/pages/home_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    bool is_checked = false;
    const mockupWidth = 414;
    const inputBGStrokeColor = Color.fromRGBO(223, 223, 223, 1);
    const textColorLight = Color.fromRGBO(175, 175, 175, 1);
    final width = MediaQuery.of(context).size.width;
    final textScaleFactor = width / mockupWidth;
    final alphanumeric =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 40 / mockupWidth * width,
          width: 40 / mockupWidth * width,
          margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Card(
            elevation: 2,
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (value) {
                  return HomePage();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 15.0,
                  color: Color(0xffbe047d),
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: AutoSizeText(
          "Dashboard Page",
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
              onTap: () {},
              child: Container(
                child: Image(
                  image: AssetImage('images/ic_notification.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ],
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
          top: 22,
          left: 25,
          right: 25,
        ),
        child: SingleChildScrollView(
          child: Form(
              child: Column(
            children: [
              //Full Name.............................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Full Name',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  var match = alphanumeric.hasMatch(text!);
                  if (text.isEmpty) {
                    return "Enter your Full Name!";
                  } else if (!match) {
                    return "Name must contain letters only !";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 12.84,
              ),
              //Fathers/Husband Name....................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Fathers/Husband Name',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  var match = alphanumeric.hasMatch(text!);
                  if (text.isEmpty) {
                    return "Enter your Fathers/Husband Name!";
                  } else if (!match) {
                    return "Name must contain letters only !";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 12.84 / mockupWidth * width,
              ),
              //Relation................................................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Relation',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(142, 142, 143, 1),
                        fontFamily: 'Roboto Regular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: is_checked, onChanged: (value) {}),
                            Text(
                              'Father',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color.fromRGBO(142, 142, 143, 1),
                                fontFamily: 'Roboto Regular',
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: is_checked, onChanged: (value) {}),
                            Text(
                              'Spouse',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color.fromRGBO(142, 142, 143, 1),
                                fontFamily: 'Roboto Regular',
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              //Mothers Name............................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Mothers Name',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  var match = alphanumeric.hasMatch(text!);
                  if (text.isEmpty) {
                    return "Enter your Mother Name!";
                  } else if (!match) {
                    return "Name must contain letters only !";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 12.84,
              ),
              //Email..................................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Email',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  if (!(text!.contains('@')) ||
                      text.isEmpty ||
                      !text.contains('.')) {
                    return "Enter a valid email address!";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 12.84,
              ),
              //Mobile Number.........................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Mobile Number',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  if (text!.isEmpty) {
                    return "Enter a valid Mobile Number!";
                  } else if (text.length != 11) {
                    return "The mobile must be 11 characters!";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 12.84,
              ),
              //Date of Birth...........................................
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AutoSizeText(
                        'Date of Birth',
                        textScaleFactor: textScaleFactor,
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromRGBO(142, 142, 143, 1),
                          fontFamily: 'Roboto Regular',
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: isValidDOB
                      //           ? inputBGStrokeColor
                      //           : Colors.red,
                      //       spreadRadius: 1),
                      // ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'DD',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Transform.rotate(
                            angle: 4 / 12.0,
                            child: const VerticalDivider(
                              color: inputBGStrokeColor,
                              thickness: 1,
                            )),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'MM',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Transform.rotate(
                            angle: 4 / 12.0,
                            child: const VerticalDivider(
                              color: inputBGStrokeColor,
                              thickness: 1,
                            )),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'YYYY',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.84,
              ),
              //National ID No.............................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'National ID No',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  if (text!.isEmpty) {
                    return "Enter a valid National ID Number!";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 12.84,
              ),
              //Passport No..............................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Passport No',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  var match = alphanumeric.hasMatch(text!);
                  if (text.isEmpty) {
                    return "Enter your Passport Number!";
                  } else if (!match) {
                    return "Must contain number only !";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 12.84,
              ),
              //Issuing Country........................................
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  hintText: 'Issuing Country',
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                validator: (text) {
                  var match = alphanumeric.hasMatch(text!);
                  if (text.isEmpty) {
                    return "Enter your Country Name!";
                  } else if (!match) {
                    return "Name must contain letters only !";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 12.84,
              ),
              //Issue Date...........................................
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AutoSizeText(
                        'Issue Date',
                        textScaleFactor: textScaleFactor,
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromRGBO(142, 142, 143, 1),
                          fontFamily: 'Roboto Regular',
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'DD',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Transform.rotate(
                            angle: 4 / 12.0,
                            child: const VerticalDivider(
                              color: inputBGStrokeColor,
                              thickness: 1,
                            )),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'MM',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Transform.rotate(
                            angle: 4 / 12.0,
                            child: const VerticalDivider(
                              color: inputBGStrokeColor,
                              thickness: 1,
                            )),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'YYYY',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.84,
              ),
              //Issue Place............................................
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
                            'Issue Place',
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
              //Expiry Date..............................................
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AutoSizeText(
                        'Expiry Date',
                        textScaleFactor: textScaleFactor,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(142, 142, 143, 1),
                          fontFamily: 'Roboto Regular',
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: isValidDOB
                      //           ? inputBGStrokeColor
                      //           : Colors.red,
                      //       spreadRadius: 1),
                      // ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'DD',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Transform.rotate(
                            angle: 4 / 12.0,
                            child: const VerticalDivider(
                              color: inputBGStrokeColor,
                              thickness: 1,
                            )),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'MM',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Transform.rotate(
                            angle: 4 / 12.0,
                            child: const VerticalDivider(
                              color: inputBGStrokeColor,
                              thickness: 1,
                            )),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            // key: _formKey,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusColor: Colors.white,
                              fillColor: textColorLight,
                              filled: false,
                              hoverColor: Colors.white,
                              hintText: 'YYYY',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.84,
              ),
              //Salutation................................................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Salutation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: const Color.fromRGBO(142, 142, 143, 1),
                        fontFamily: 'Roboto Regular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: is_checked, onChanged: (value) {}),
                            Text(
                              'Mr.',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color.fromRGBO(142, 142, 143, 1),
                                fontFamily: 'Roboto Regular',
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: is_checked, onChanged: (value) {}),
                            Text(
                              'Ms.',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color.fromRGBO(142, 142, 143, 1),
                                fontFamily: 'Roboto Regular',
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: is_checked, onChanged: (value) {}),
                            Text(
                              'None',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color.fromRGBO(142, 142, 143, 1),
                                fontFamily: 'Roboto Regular',
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 53,
              ),
              //Button..............................................
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (value) {
                      return AddressPage();
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
              SizedBox(
                height: 120,
              ),
            ],
          )),
        ),
      )),
    );
  }
}
