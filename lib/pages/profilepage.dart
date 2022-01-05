import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_test/widgets/CarnsView.dart';
import 'package:ui_test/widgets/GridView.dart';
import 'package:ui_test/widgets/ItemNameView.dart';
import 'package:ui_test/widgets/ProfileView.dart';
import 'package:ui_test/widgets/PubList.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color(0xFF865f1c),
                  const Color(0xFF472701),
                ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profileview(),
                    SizedBox(
                      height: 20,
                    ),
                    CarnView(),
                    ItemNameView(name: 'Favourite Pub'),
                    PubList(),
                    ItemNameView(name: 'Last Visited Pub'),
                    GridViewCustom(),
                    InkWell(
                      onTap: (){
                        exit(0);
                      },
                      child: Center(
                          child: Container(
                        width: 200,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white, width: 2.0),
                            color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.power_settings_new,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: Colors.pink,
                                        offset: Offset(0, 3),
                                        blurRadius: 10)
                                  ]),
                            ),
                          ],
                        ),
                      )),
                    )
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
