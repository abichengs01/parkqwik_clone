import 'package:flutter/material.dart';

import '../colors.dart';

class Coupon_pg1 extends StatefulWidget {
  const Coupon_pg1({super.key});

  @override
  State<Coupon_pg1> createState() => _Coupon_pg1State();
}

class _Coupon_pg1State extends State<Coupon_pg1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF828381),
      body: Column(
        children: [
      Column(
      children: [
      Stack(
      children:[Container(
      child: Image.asset("images/rdbanner1.png"),
    ),
    Positioned(top: 40,left: 5,
    child: IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
    onPressed: () {
    Navigator.pop(context);
    },),
    ),
    Positioned(top: 52,left: 60,
    child: Text('Rewards',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
    color: AppColor.appbartext) ,),
    ),
    ]),
    Container(height: 628,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    )
    ),child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          children: [
            Row(
              children: [
                Text("Congratulations!",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                Spacer(),
                IconButton(icon: Icon(Icons.cancel),iconSize: 20,color: AppColor.primary,
                  onPressed: () {
                    Navigator.pop(context);
                  },),
              ],
            ),
            SizedBox(height: 25,),
            Center(
                child: Image.asset("images/rewards/sa6.png",height: 158,width: 180,)
            ),
            SizedBox(height: 40,),

            Container(
              child: Column(
                children: [
                  Center(
                      child: Text("How To Redeem",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: 270,height: 65,
                        child:
                        Text("Copy the coupon code and apply it when booking your parking space or simply click on 'Redeem Now’",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: [
                        Text("Coupon will be valid till",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                        Text(" 22 Nov 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container( height: 45,width: 288,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.primarytext,
                      border: Border.all(
                        color: AppColor.primary,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PRKQWK10",style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.primary
                          ),),

                          Icon(Icons.content_copy,size: 24,color: AppColor.primary,)
                        ],
                      ),
                    ),),
                  SizedBox(height: 80,),

                  Container(height: 41,width: 292,
                      child: ElevatedButton(onPressed:(){
                        print("object");

                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColor.primary),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),)),
                        child: Text("Redeem Now",style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w600,color:AppColor.primarytext
                        ),),
                      )),



                ],
              ),
            )
          ],
        ),
    ),
    ),
        ],
      ),
    ])
    );
  }
}
