//import 'dart:js';

import 'package:flutter/material.dart';

class AppColor{
  static const Color primary = Color(0xFF1A9E75);
  static const Color primarytext = Color(0xFFF0FFFA);
  static const Color Gradient0 = Color(0xFFA6A765);

}
class Cards{
  static  Stack slide=Stack(
      children: [Container(
        height: 136,width:328,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [AppColor.primary,AppColor.primary,AppColor.Gradient0],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
                stops: [.2,.4,.8]
            )
        ),
      ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add money to wallet",style: TextStyle(fontSize: 13,
                  fontWeight:FontWeight.w500,color: Color(0xFFFFFFFF) ),),

              SizedBox(height: 5,),

              Text("Get 2% cashback",style: TextStyle(fontSize: 10,
                  fontWeight:FontWeight.w500,color: Color(0xFFFFFFFF) ),),

              SizedBox(height: 25,),

              Container(width: 105,height: 27,
                child: ElevatedButton(onPressed: (){},
                  child: Text(" Add Money",style: TextStyle(fontSize: 10,fontWeight:
                  FontWeight.w600),),),
              ),
            ],
          ),
        ),

        Positioned(top: 15,right: 25,
            child: Container(height:96, width: 112,child: Image.asset("images/amtw.png"))),
        SizedBox(height: 30,width: 30,)
      ]);
  // Stack(
  // children: [Container(
  // height: 136,width: MediaQuery.of(context).size.width*.92,
  // decoration: BoxDecoration(
  // borderRadius: BorderRadius.circular(10),
  // gradient: LinearGradient(
  // colors: [AppColor.primary,AppColor.primary,AppColor.Gradient0],
  // begin: Alignment.topCenter,
  // end:Alignment.bottomCenter,
  // stops: [.2,.4,.8]
  // )
  // ),
  // ),
  // Padding(
  // padding: const EdgeInsets.all(20.0),
  // child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  // children: [
  // Text("Add money to wallet",style: TextStyle(fontSize: 13,
  // fontWeight:FontWeight.w500,color: Color(0xFFFFFFFF) ),),
  //
  // SizedBox(height: 5,),
  //
  // Text("Get 2% cashback",style: TextStyle(fontSize: 10,
  // fontWeight:FontWeight.w500,color: Color(0xFFFFFFFF) ),),
  //
  // SizedBox(height: 25,),
  //
  // Container(width: 105,height: 27,
  // child: ElevatedButton(onPressed: (){},
  // child: Text(" Add Money",style: TextStyle(fontSize: 10,fontWeight:
  // FontWeight.w600),),),
  // ),
  // ],
  // ),
  // ),
  //
  // Positioned(top: 15,right: 25,
  // child: Container(height:96, width: 112,child: Image.asset("images/amtw.png")))
  // ])
}