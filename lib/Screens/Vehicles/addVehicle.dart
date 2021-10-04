import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:okapp1/Components/constants.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key key}) : super(key: key);

  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kwhite,
        body: Padding(
          padding: const EdgeInsets.all(kbigpadding),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                      child: Text("Adding Vehicle",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: kblackcolor),)),
                  buildLandCard(buildGuestColumn()),
                  SizedBox(height: 30,),
                  buildSecondCard(
                      Container(

                    child: Container(
                      margin: EdgeInsets.only(top: 60,left: 10,right: 10,bottom: 40),
                      child: Column(
                        children: [
                          buildTextTheme(context,"Vehicle Number",FontAwesomeIcons.user),
                          buildTextTheme(context,"Vehicle Manufacturer",FontAwesomeIcons.user),
                          buildTextTheme(context,"Vehicle Model",FontAwesomeIcons.user),
                          Align(
                            alignment: Alignment.bottomRight,
                              child: buildOtpTheme(context, "OTP", FontAwesomeIcons.user)

                          )
                        ],
                      ),
                    ),
                  ))
                ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextTheme(BuildContext context,String text,IconData icon) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Theme(
                    data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                        child: TextField(
                          autofocus: false,
                          style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kblueGREY,
                            hintStyle: TextStyle(color: kwhite,fontSize: ktextSizeS),
                            hintText: text,
                            contentPadding:
                            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kblueGREY),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kblueGREY),
                            ),
                            prefixIcon: Icon(icon,color: kwhite,)
                          ),

                        ),
                      ),
    );
  }

  Widget buildOtpTheme(BuildContext context,String text,IconData icon) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(10),
      child: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: TextField(
          autofocus: false,
          style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
          decoration: InputDecoration(
              filled: true,
              fillColor: kblueGREY,
              hintStyle: TextStyle(color: kwhite,fontSize: ktextSizeS),
              hintText: text,
              contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kblueGREY),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kblueGREY),
              ),
              prefixIcon: Icon(icon,color: kwhite,)
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
                        Text("Important",style: TextStyle(fontSize: ktextSizeM,color: ktextColor,fontWeight: FontWeight.w700),),
                        Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 8.5,bottom: 19.5),
                            child: Text("If there is a duplicate entry, the vehicle will not get added unless the doucments are submitted.",style: TextStyle(fontSize: ktextSizeS,color: ktextColor,fontWeight: FontWeight.w400,),maxLines: 6,)),


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


  Card buildSecondCard(Widget cardchild) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)
            ,bottomLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0)
        ),
      ),
      color: kwhite,
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

}
