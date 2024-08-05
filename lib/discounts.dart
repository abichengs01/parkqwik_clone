import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Discounts extends StatefulWidget {
  const Discounts({super.key});

  @override
  State<Discounts> createState() => _DiscountsState();
}

class _DiscountsState extends State<Discounts> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children:[Container(
                child: Image.asset("images/rdbanner2.png",fit: BoxFit.cover,),
              ),
                Positioned(top: 40,left: 5,
                  child: IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
                    onPressed: () {
                      Navigator.pop(context);
                    },),
                ),
                Positioned(top: 52,left: 60,
                  child: Text('Discounts',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
                      color: AppColor.appbartext) ,),
                ),
              ]),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Deals For You",style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16),),

                SizedBox(height: 10,),

                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                          children:[ Container(height: 136,width: 148,
                            child: Image.asset("images/hs/others/deals/imgd.png"),
                          ),
                            Positioned(left: 14,top: 30,
                              child: Text("Recharge FASTag",style: TextStyle(fontSize: 15,
                                  fontWeight: FontWeight.w500,color: Color(0xFFFBFF35)),),
                            ),
                            Positioned( left: 30,bottom: 35,
                              child: Container(width: 92,height: 24,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                alignment: Alignment.center,
                                child: Text("Recharge Now",style: TextStyle(fontSize: 10,
                                    fontWeight: FontWeight.w600),),
                              ),
                            ),
                          ]),
                      SizedBox(width: 3,),


                      Container(height: 140,width: 148,
                        //color: Colors.green,
                        child: Image.asset("images/hs/others/deals/imgacko.png"),
                      ),
                      SizedBox(width: 3,),

                      Stack(
                          children:[Container(
                            height: 136,width:148,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [Color(0xFFF95AE9),
                                      Color(0xFFEF26DC)],
                                    begin: Alignment.topCenter,
                                    end:Alignment.bottomCenter,
                                    stops: [0.4,0.7]
                                )),
                          ),
                            Positioned(left: 18,top: 30,
                              child: Text("Get 15% off On",style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.w500,color: Color(0xFFFBFF35)),),
                            ),
                            Positioned(left: 35,top: 52,
                              child: Text("your first parking",style: TextStyle(fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
                            ),
                            Positioned( left: 42,bottom: 35,
                              child: Container(width: 68,height: 24,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                alignment: Alignment.center,
                                child: Text("Book Now",style: TextStyle(fontSize: 10,
                                    fontWeight: FontWeight.w600),),
                              ),
                            ),

                          ]),

                    ],),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Parking",style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16),),

                SizedBox(height: 10,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      Stack(
                          children:[ Container(height: 130,width: 223,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [Color(0xFF1B53E4),
                                      Color(0xFF268AFF),
                                    ],
                                    begin: Alignment.topLeft,
                                    end:Alignment.bottomRight,
                                    stops: [0.2,0.7]
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Reserve a Parking Slot',style: TextStyle(fontSize: 18,
                                    color: Color(0xFFFFFFFF),),),
                                  Text('Win 300ml petrol on your first',
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFFFFF),),),
                                  Text('parking!',
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFFFFF),),),
                                  SizedBox(height: 20,),
                                  Container(width: 80,height: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("Explore Now",style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.w600),),
                                  ),],),),),
                            Positioned(bottom: 20,right: 15,
                                child: Image.asset("images/ycar.jpeg",height: 42,width: 60,))
                          ]),
                      SizedBox(width: 10,),
                      Stack(
                          children:[ Container(height: 130,width: 223,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [Color(0xFF7C58E2),
                                      Color(0xFFAF60FF),
                                    ],
                                    begin: Alignment.topLeft,
                                    end:Alignment.bottomRight,
                                    stops: [0.2,0.7]
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Book a EV Parking Slot',style: TextStyle(fontSize: 18,
                                    color: Color(0xFFFFFFFF),),),
                                  Text('Get exciting rewards on your',
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFFFFF),),),
                                  Text('EV Parking',
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFFFFF),),),
                                  SizedBox(height: 20,),
                                  Container(width: 80,height: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("Explore Now",style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.w600),),
                                  ),],),),),
                            Positioned(bottom: 20,right: 5,
                                child: Image.asset("images/ycarlside.png",height: 40,width: 110,))
                          ]),
                    ],),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FASTag",style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16),),

                SizedBox(height: 10,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                          children: [
                            Container(height: 130,width: 223,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: [AppColor.primary,
                                        Color(0xFF27CD99)],
                                      begin: Alignment.topLeft,
                                      end:Alignment.bottomRight,
                                      stops: [0.2,0.7]
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Get 15% off on',style: TextStyle(fontSize: 16,
                                        color: Color(0xFFFBFF35)),),
                                    Text('FASTag recharge',style: TextStyle(fontSize: 20,
                                      color: Color(0xFFFFFFFF),),),
                                    Text('Pay using Axis Bank Credit & Debit Cards',
                                      style: TextStyle(fontSize: 8,color: Color(0xFFFFFFFF),),),
                                    SizedBox(height: 15,),
                                    Container(width: 92,height: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("Recharge Now",style: TextStyle(fontSize: 10,
                                          fontWeight: FontWeight.w600),),
                                    ),],),),),
                            Positioned(bottom: 20,right: 15,
                                child: Image.asset("images/fastag.png",height: 16,width: 74,))
                          ]),

                      SizedBox(width: 10,),
                      Stack(
                          children:[ Container(height: 130,width: 223,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFF2691B),
                                      Color(0xFFFFBF74),
                                    ],
                                    begin: Alignment.topLeft,
                                    end:Alignment.bottomRight,
                                    stops: [0.2,0.7]
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Buy FASTag & Get Free  ',style: TextStyle(fontSize: 16,
                                      color: Color(0xFFFFFFFF),fontWeight: FontWeight.w400),),
                                  Row(
                                    children: [
                                      Text('Petrol Worth',style: TextStyle(fontSize: 16,
                                          color: Color(0xFFFFFFFF),fontWeight: FontWeight.w400),),
                                      Icon(Icons.currency_rupee,color:Color(0xFFFFFFFF),size: 16 ,),
                                      Text('100',style: TextStyle(fontSize: 16,
                                          color: Color(0xFFFFFFFF),fontWeight: FontWeight.w400),),
                                    ],
                                  ),


                                  Text('Win Free Petrol On FASTag Activation',
                                    style: TextStyle(fontSize: 8,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w400),),

                                  SizedBox(height: 20,),
                                  Container(width: 62,height: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("Book Now",style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.w600),),
                                  ),],),),),
                            Positioned(bottom: 20,right: 0,
                                child: Image.asset("images/fuelstation.png",height: 48,width: 61,)),
                            Positioned(bottom: 15,right: 35,
                                child: Image.asset("images/ycarrside.png",height: 24,width: 56,)),

                          ])                    ],),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
