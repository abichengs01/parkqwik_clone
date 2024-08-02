import 'package:flutter/material.dart';
class Expired extends StatefulWidget {
  const Expired({super.key});

  @override
  State<Expired> createState() => _ExpiredState();
}

class _ExpiredState extends State<Expired> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 25,right: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Image.asset("images/rewards/nocoupon.png",height: 95,width: 116,),
              SizedBox(height: 20,),
              Text("You don’t have any coupons",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                //   Row(
                //   children: [
                //   Image.asset("images/rewards/e1.png",height: 157,width: 157,),
                //   Image.asset("images/rewards/e2.png",height: 157,width: 157,),
                //   ],
                // ),
              ]),
        ),
      )
    );
  }
}
