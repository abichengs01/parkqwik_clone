//import 'dart:js';

import 'package:flutter/material.dart';

class AppColor{
  static const Color primary = Color(0xFF1A9E75);
  static const Color primarytext = Color(0xFFF0FFFA);
  static const Color Gradient0 = Color(0xFFA6A765);
  static const Color appbartext = Color(0xFFFFFBFB);

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
  static Container share1=Container(
    child: Column(
      children: [
        SizedBox(height: 10,),
        Row(
          children: [
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/shareme.png",),
                  SizedBox(height: 5,),
                  Text("ShareMe",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/whatsapp.png",height: 36,width: 36,),
                  SizedBox(height: 5,),
                  Text("WhatsApp",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/instagram.png",height: 40,width: 40,),
                  SizedBox(height: 1,),
                  Text("Instagram",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/drive.png",height: 32,width: 36,),
                  SizedBox(height: 7,),
                  Text("Drive",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),


          ],
        ),
        SizedBox(height: 25,),
        Row(
          children: [
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/gmail.png",height: 38,width: 38,),
                  SizedBox(height: 5,),
                  Text("Gmail",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/messaging.png",height: 36,width: 36,),
                  SizedBox(height: 5,),
                  Text("Messaging",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/notes.png",height: 41,width: 36,),
                  SizedBox(height: 2,),
                  Text("Notes",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/facebook.png",height: 42,width: 42,),
                  SizedBox(height: 1,),
                  Text("Facebook",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),


          ],
        ),
      ],
    ),
  );
  static Container share2=Container(
    child: Column(
      children: [
        SizedBox(height: 10,),
        Row(
          children: [
            Container(width: 65,
              child: Column(
                children: [
                  Image.asset("images/telegram.png",height: 40,width: 40,),
                  SizedBox(height: 5,),
                  Text("Telegram",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(width: 15,),



          ],
        ),

      ],
    ),
  );


}