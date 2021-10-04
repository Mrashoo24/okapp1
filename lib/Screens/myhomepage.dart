import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp1/Components/constants.dart';
import 'package:okapp1/Screens/Vehicles/addVehicle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(kbigpadding),
          child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  buildLandCard(buildGuestColumn()),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                        child:   Image.asset("assets/images/undo.png",width: 18,height: 19,),
                      )
                  ),
                ]
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Stack(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: buildLandCard(buildSecondryColumn()),
                  ),
                    Positioned(
                      top: 0,
                      left: 25,
                      child: Container(
                        width: 155,
                        height: 32,
                        decoration: BoxDecoration(
                            color: kred,
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                        child: Center(
                          child: Text("Report an Event",style: GoogleFonts.lato(color: kwhite,fontWeight: FontWeight.w700),),
                        ),
                      ),
                    )
                  ]
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }

  Card buildLandCard(Widget cardchild) {
    return Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)
                    ,bottomLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)
                ),
              ),
             color: kbggrey,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)
                    ,bottomLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)
                ),
              ),
              child: cardchild,
            ),
          );
  }

  Column buildGuestColumn() {
    return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)
                    ),
                    color: kblackcolor,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(kbigpadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                            child: Text("The OK App",style: TextStyle(fontSize: ktextSizeL,color: kyellow,fontWeight: FontWeight.w700),)),
                        Text("This is a free to use app to "
                            "help anyone who may be in an emergency"
                            "situation,on the road, workplace or even at home",style: TextStyle(color: kwhite,fontSize: ktextSizeN,fontWeight: FontWeight.w400),),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                            child: Text("www.oyekidar.com",style: TextStyle(color: kyellow,fontSize: ktextSizeS,fontWeight: FontWeight.w400))),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12),
                            child: Image.asset("assets/images/diamond.png",width: 35,height: 35,),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Guest",style: TextStyle(fontSize: ktextSizeM,color: ktextColor,fontWeight: FontWeight.w700),),
                                Container(
                                  width: 200,
                                    margin: EdgeInsets.only(top: 8.5,bottom: 19.5),
                                    child: Text("Welcome to the OK App.\nRegisteration is not required to report an event",style: TextStyle(fontSize: ktextSizeS,color: ktextColor,fontWeight: FontWeight.w400,),maxLines: 6,)),


                              ],
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),

                    ],
                  ),
                ),
              ],
            );
  }

  Widget buildSecondryColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,

      children: [
       buildElevatedButton("Vehicle\nNumber"),
        buildElevatedButton("QR\nCode")
      ],
    );
  }

  Widget buildElevatedButton(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 18,top: 40),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(gradienColor1),
              elevation:  MaterialStateProperty.all(5),
          padding: MaterialStateProperty.all(EdgeInsets.all(0))
        ),
        onPressed: () {
          Get.to(AddVehicle());
        },
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [gradienColor1, gradienColor2]),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Container(
            width: 120,
            height: 60,
            padding: const EdgeInsets.all(10),

            child:  Text(text, textAlign: TextAlign.center,style: GoogleFonts.lato(color: kblueGREY,fontWeight: FontWeight.w700),),
          ),
        ),
      ),
    );
  }


}
