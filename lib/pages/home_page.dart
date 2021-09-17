import 'dart:ffi';

import 'package:explore_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Profile Picture",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/primary.png',
                width: 140,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Anne Margaritha',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Text('UX Designer',
                  style: TextStyle(color: greyColor, fontSize: 16)),
              SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  Wrap(
                    spacing: 38,
                    runSpacing: 40,
                    children: [
                      Image.asset(
                        'assets/images/item1.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item2.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item3.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item4.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item5.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item6.png',
                        width: 80,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 224,
                    height: 55,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      color: Colors.white,
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                padding: EdgeInsets.symmetric(vertical: 50),
                                height: 290,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Text('Update Foto',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Text(
                                      'You are only able to change \nthe picture profile once',
                                      style: TextStyle(
                                          color: greyColor, fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                        width: 224,
                                        height: 55,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          color: orangeColor,
                                          onPressed: () {},
                                          child: Text(
                                            'Continue',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ))
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text(
                        'Update Profile',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 76)
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
