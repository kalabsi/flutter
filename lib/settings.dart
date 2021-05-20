import 'dart:ui';

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SettingsPage ',
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool showPassword = false;
  bool state = true;
  bool state2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {}),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 7, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0, 10))
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.worldfuturecouncil.org%2Fp%2Fhelen-clark-3%2Fblank-profile-picture-973460_1280%2F&psig=AOvVaw3EZu6d6g0PXIqgxSQmv2Qz&ust=1621563448088000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMie09yY1_ACFQAAAAAdAAAAABAD"))),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                    color: Colors.black,
                                  ),
                                  child: Icon(Icons.edit, color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      buildTextField("Full name", "Khaled Absi", false),
                      buildTextField("Username", "kalabsi", false),
                      buildTextField("Email", "khaleabsi12@gmail.com", false),
                      buildTextField("Password", "****", true),
                      buildTextField("Phone number", "0755659879", false),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Enable notifications ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        )),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          value: state,
                          onChanged: (bool s) {
                            setState(() {
                              state = s;
                              print(state);
                            });
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Private account ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        )),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          value: state2,
                          onChanged: (bool s1) {
                            setState(() {
                              state2 = s1;
                              print(state2);
                            });
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  'Languages:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: DropDownField(
                  controller: languageSelected,
                  hintText: 'Select your language ',
                  enabled: true,
                  itemsVisibleInDropdown: 7,
                  items: languages,
                  onValueChanged: (value) {
                    setState(() {
                      selectLanguage = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  children: [
                    OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 22,
                    ),
                    RaisedButton(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                        color: Colors.purple[200],
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.0,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String selectLanguage = "";
  final languageSelected = TextEditingController();
  List<String> languages = [
    'English',
    'Arabic',
    'Chinease',
    'Spanish',
    'French',
    'Russian',
    'German',
  ];
  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7.5),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
