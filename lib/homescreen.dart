import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parkqwik/colors.dart';
import 'package:parkqwik/vehicle_insurance.dart';

import 'fastag_recharge_p1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var vehiclenum = TextEditingController();
  final List<Widget> image=[ Cards.slide,Cards.slide,Cards.slide];

  int _CurrentPage=0;

  @override

  buildCarouselIndicator(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i=0;i<image.length;i++)
          Container( height: 9,width: 9,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: i== _CurrentPage?AppColor.primary: Color(0xFFD9D9D9),
                shape: BoxShape.circle
            ),
          )
      ],
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green[700],
      //
      // ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
          Container(
              height: 230,
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(300, 80),
                      bottomLeft: Radius.elliptical(300, 80))
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        // CircleAvatar( radius: 26,
                        // backgroundImage: AssetImage("images/hs/dp.png",),),
                        Container(
                            //child: Image.asset("images/hs/dp.png",fit: BoxFit.fill),
                          height: 51,width: 51,
                          //margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                              image: DecorationImage(image: AssetImage("images/hs/dp.png"),
                              fit: BoxFit.fill),
                              shape: BoxShape.circle
                          ),),

                        Positioned(bottom: 0,right: 0,
                          child: CircleAvatar( radius: 10,
                            backgroundColor: Colors.white,
                          child: Icon(Icons.menu,size: 15,),),
                        ),
                    ]),
                     SizedBox(width: 20,),
                    Container(width: 159,height: 32,
                      child: ElevatedButton.icon(onPressed: (){},
                          icon:(Icon(Icons.add_circle)), label: Text("Add Vehicle")),
                    ),
                    SizedBox(width: 10,),
                    Stack(
                      children:[ CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child:Image.asset("images/hs/wallet.png",height: 18,)
                      ),
                        Container(
                          width: 20,height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFFCA28)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee,size: 7,),
                              Text("450",style: TextStyle(fontSize:6,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                    ]),
                    SizedBox(width: 5,),
                    Stack(
                      children:[ CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: Icon(Icons.notifications_none,size: 20,
                          color: Colors.white.withOpacity(0.9),),
                      ),
                        Positioned(right: 6,top: 6,
                            child: Icon(Icons.circle,color: Color(0xFFFFCA28),size: 8,))
                    ]),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      child: Image.asset('images/hs/share.png',height: 18,),
                    ),


                  ],
                ),
                SizedBox(height: 15,),

                Container(
                  height: 235,width: MediaQuery.of(context).size.width*.92,

                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                    )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Services",style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 16),),

                        SizedBox(height: 10,),

                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                boxShadow: [BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                )],
                                color: Colors.white,borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Image.asset("images/services/lpin.png",width: 40,),
                                  Text("Nearby",style: TextStyle(fontSize: 10),),
                                  Text("Parking",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                  )],
                                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/ec.png",width: 40,),
                                  Text("EV Parking",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                  )],
                                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/cw.png",width: 40,),
                                  Text("Car Wash",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            InkWell(
                              onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> VehicleInsurance()));},
                              child: Container(
                                height: 80,width: 60,
                                decoration: BoxDecoration(shape: BoxShape.rectangle,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                    )],
                                    color: Colors.white,borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Image.asset("images/services/vi.jpeg",width: 40,),
                                    SizedBox(height: 2,),
                                    Text("Vehicle",style: TextStyle(fontSize: 10),),
                                    Text("Insurance",style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                  )],
                                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/truck.png",width: 40,),
                                  Text("Roadside",style: TextStyle(fontSize: 10),),
                                  Text("Assistance",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                  )],
                                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/challan.png",width: 40,),
                                  Text("Pay",style: TextStyle(fontSize: 10),),
                                  Text("Challan",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                  )],
                                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/toll.png",width: 40,),
                                  Text("Toll",style: TextStyle(fontSize: 10),),
                                  Text("Estimator",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                  )],
                                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Image.asset("images/services/vp.png",width: 40,),
                                  SizedBox(height: 5,),
                                  Text("Valet",style: TextStyle(fontSize: 10),),
                                  Text("Parking",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(height: 340,width: MediaQuery.of(context).size.width*.92,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FASTag Recharge",style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 16,),),
                        SizedBox(height: 3,),
                        Text("Get upto 100% cashback on first 3 Fastag Recharge",
                          style: TextStyle(color:Colors.grey ,
                          fontSize: 14,fontWeight: FontWeight.w400),),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Container( height: 40,width: 201,
                              child: TextField(decoration: InputDecoration(
                                focusColor: Color(0xFF1A9E75),
                                fillColor: AppColor.primarytext ,
                                filled: true,
                                labelText: 'Add vehicle or chassis number',
                                labelStyle:TextStyle(color:Color(0xFF1A9E75),
                                    fontSize: 11,fontWeight: FontWeight.w500 ) ,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(width: 1,color:AppColor.primary ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                )
                              ),
                                controller: vehiclenum,

                              ),
                            ),
                            SizedBox(width: 5,),

                            Container(width: 96,height: 40,
                              child: ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(AppColor.primary),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                ),)),
                                child: Text("Recharge",style: TextStyle(
                                  fontSize: 11,fontWeight: FontWeight.w800,color:AppColor.primarytext
                                ),),
                              ))],
                        ),

                        Row(
                          children: [
                            Text("Powered by",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400,
                                color:Color(0xFF434343)
                            ),),
                            SizedBox(width: 5,),
                            Container(height: 57,width: 57,
                            child: Image.asset("images/hs/netc.png"),),
                            SizedBox(width: 5,),
                            Container(height: 25,width: 47,
                              child: Image.asset("images/hs/bb.png"),)
                          ],
                        ),

                        Divider(height:3,thickness: 3,
                        color: Color(0xFFF5F4F4),),

                        SizedBox(height: 12,),

                        Text("Discover",style: TextStyle(fontWeight: FontWeight.w500,
                            fontSize: 16),),

                        SizedBox(height: 12,),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(height: 90,width: 60,
                              child: Column(
                                children: [
                                  Container(
                                    width: 51,height: 51,
                                    decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 3,
                                        )],
                                      color: AppColor.primarytext,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Icon(Icons.shopping_bag,color: AppColor.primary,)
                                  ),
                                  SizedBox(height: 3,),
                                  Text("Buy",style: TextStyle(fontSize: 10),),
                                  Text("FASTag",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(height:90,width: 60,
                              child: Column(
                                children: [
                                  Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color: AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child:Icon(Icons.published_with_changes,color: AppColor.primary,)
                                  ),
                                  SizedBox(height: 3,),
                                  Text("Replace",style: TextStyle(fontSize: 10),),
                                  Text("FASTag",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(height: 90,width: 60,
                              child: Column(
                                children: [
                                  Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color: AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Icon(Icons.done_all,color: AppColor.primary,)
                                  ),
                                  SizedBox(height: 3,),
                                  Text("Active",style: TextStyle(fontSize: 10),),
                                  Text("FASTag",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(height: 90,width: 60,
                              child: Column(
                                children: [
                                  Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color: AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/discover/close.png",)
                                  ),
                                  SizedBox(height: 3,),
                                  Text("Close",style: TextStyle(fontSize: 10),),
                                  Text("FASTag",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                          ],),




                      ],
                    ),
                  ),

                ),

                SizedBox(height: 15,),

                Column(
                  children: [
                    Container(height: 136,width: MediaQuery.of(context).size.width*.92,
                      child: CarouselSlider(items: image,
                          options:CarouselOptions(
                            //autoPlay: true,
                            viewportFraction: 1,
                            onPageChanged: (value,_){
                              setState(() {
                                _CurrentPage =value;
                              });
                            }
                          ) ),
                    ),
                    SizedBox(height: 5,),

                    buildCarouselIndicator(),
                  ],
                ),

                SizedBox(height: 15,),

            Container(
              height: 145 ,width: MediaQuery.of(context).size.width*.92,

              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Others",style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 16),),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height:95,width: 60,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                            Container(
                                width: 51,height: 51,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                    )],
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              child: Image.asset("images/hs/others/imgo.png"),
                            ),
                            SizedBox(height: 3,),
                            Text("Rentout",style: TextStyle(fontSize: 10),),
                            Text("Helmet",style: TextStyle(fontSize: 10),),])),
                  Column(
                      children: [
                        Container(
                          width: 51,height: 51,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                              )],
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("images/hs/others/img_1.png"),
                        ),
                        SizedBox(height: 3,),
                        Text("Fuel Price",style: TextStyle(fontSize: 10),),
                        ]),

                  Column(
                      children: [
                        Container(
                          width: 51,height: 51,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                              )],
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("images/hs/others/img_2.png"),
                        ),
                        SizedBox(height: 3,),
                        Text("Shop",style: TextStyle(fontSize: 10),),
                        ]),
                  Column(
                      children: [
                        Container(
                          width: 51,height: 51,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                              )],
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("images/hs/others/img_3.png"),
                        ),
                        SizedBox(height: 3,),
                        Text("My Vechiles",style: TextStyle(fontSize: 10),),
                      ])
                      ],),






                  ]),
              ),),

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


                            Stack(
                              children:[Container(height: 136,width: 148,
                                //color: Colors.green,
                                child: Image.asset("images/hs/others/deals/img_1.png"),
                              ),
                                Positioned(left: 18,top: 30,
                                  child: Text("Get 25% off On",style: TextStyle(fontSize: 17,
                                      fontWeight: FontWeight.w500,color: Color(0xFFFBFF35)),),
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

                Container(
                  height: 145 ,width: MediaQuery.of(context).size.width*.92,

                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gonna Travel ?",style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 16),),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(height:90,width: 60,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 51,height: 51,
                                          decoration: BoxDecoration(
                                              boxShadow: [BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 3,
                                              )],
                                              color:AppColor.primarytext,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Image.asset("images/hs/travel/imgt.png"),
                                        ),
                                        SizedBox(height: 3,),
                                        Text("Car Wash",style: TextStyle(fontSize: 10),),])),
                              Column(
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/hs/travel/img_1.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Estimate Toll",style: TextStyle(fontSize: 10),),
                                  ]),

                              Column(
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                        child: Image.asset("images/hs/travel/img_2.png"),),
                                    SizedBox(height: 3,),
                                    Text("Shop",style: TextStyle(fontSize: 10),),
                                  ]),
                              Column(
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                        child: Icon(Icons.traffic,color: AppColor.primary,size: 30,)                                    ),
                                    SizedBox(height: 3,),
                                    Text("Protocols",style: TextStyle(fontSize: 10),),
                                  ])
                            ],),






                        ]),
                  ),),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Premium Plans",style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 16),),

                      SizedBox(height: 10,),

                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                                children:[Container(
                                  height: 101,width:158,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                          colors: [Color(0xFF48C9A1),
                                            AppColor.primary],
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          stops: [0.4,0.8]
                                      )),
                                ),
                                  Positioned(left: 18,top: 10,
                                    child: Text("Monthly Parking",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w600,color: Color(0xFFFBFF35)),),
                                  ),
                                  Positioned(left: 18,top: 30,
                                    child: Text("Dedicated parking available",
                                      style: TextStyle(fontSize: 8,
                                        fontWeight: FontWeight.w500,color: Color(0xFFFFFFFF)),),
                                  ),
                                  Positioned(left: 18,top: 40,
                                    child: Text("near you.",
                                      style: TextStyle(fontSize: 8,
                                          fontWeight: FontWeight.w500,color: Color(0xFFFFFFFF)),),
                                  ),
                                  Positioned( left: 18,top: 65,
                                    child: Container(width: 82,height: 22,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Explore Now",style: TextStyle(fontSize: 8,
                                              fontWeight: FontWeight.w600),),
                                          SizedBox(width: 3,),
                                          Icon(Icons.arrow_forward,size: 11,)
                                        ],),
                                    ),),
                                  Positioned(bottom: 15,right: 10,
                                      child: Image.asset("images/cars.png",width: 42,height: 46,))

                                ]),
                            SizedBox(width: 12,),
                            Stack(
                                children:[Container(
                                  height: 101,width:158,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                          colors: [Color(0xFF48C9A1),
                                            AppColor.primary],
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          stops: [0.4,0.8]
                                      )),
                                ),
                                  Positioned(left: 24,top: 10,
                                    child: Text("Elite Car Wash ",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w600,color: Color(0xFFFBFF35)),),
                                  ),
                                  Positioned(left: 18,top: 30,
                                    child: Text("Elite car grooming at your ",
                                      style: TextStyle(fontSize: 8,
                                          fontWeight: FontWeight.w500,color: Color(0xFFFFFFFF)),),
                                  ),
                                  Positioned(left: 18,top: 40,
                                    child: Text("doorstep.",
                                      style: TextStyle(fontSize: 8,
                                          fontWeight: FontWeight.w500,color: Color(0xFFFFFFFF)),),
                                  ),
                                  Positioned( left: 18,top: 65,
                                    child: Container(width: 82,height: 22,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Explore Now",style: TextStyle(fontSize: 8,
                                              fontWeight: FontWeight.w600),),
                                          SizedBox(width: 3,),
                                          Icon(Icons.arrow_forward,size: 11,)
                                        ],),
                                    ),),
                                  Positioned(bottom: 15,left: 100,
                                      child: Image.asset("images/hcw.png",width: 62,height: 37,))

                                ]),

                          ],),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  height: 234 ,width: MediaQuery.of(context).size.width*.92,

                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Recharge & Bill Payments",style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 16),),

                          SizedBox(height: 10,),


                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FastagRechargeP1()));},
                                      child: Container(
                                        width: 51,height: 51,
                                        decoration: BoxDecoration(
                                            boxShadow: [BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 3,
                                            )],
                                            color:AppColor.primarytext,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Image.asset("images/r&b/r&b1.png"),
                                      ),
                                    ),
                                    
                                    SizedBox(height: 3,),
                                    Text(" Fastag ",style: TextStyle(fontSize: 10),),
                                    Text("Recharge",style: TextStyle(fontSize: 10),),

                                  ]),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b2.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Mobile ",style: TextStyle(fontSize: 10),),
                                    Text("Recharge",style: TextStyle(fontSize: 10),),

                                  ]),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b3.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Electricity",style: TextStyle(fontSize: 10),),
                                    SizedBox(height: 10,),

                                  ]),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b4.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Water",style: TextStyle(fontSize: 10),),
                                    SizedBox(height: 10,),

                                  ]),
                            ],),
                          SizedBox(height: 10,),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b5.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text(" Gas",style: TextStyle(fontSize: 10),),
                                    Text("Cylinder",style: TextStyle(fontSize: 10),),

                                  ]),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b6.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Loan",style: TextStyle(fontSize: 10),),
                                    Text("Payment",style: TextStyle(fontSize: 10),),

                                  ]),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b7.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("DTH",style: TextStyle(fontSize: 10),),
                                    SizedBox(height: 10,),

                                  ]),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset("images/r&b/r&b8.png"),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("House Rent",style: TextStyle(fontSize: 10),),
                                    SizedBox(height: 10,),
                                  ]),
                            ],),
                        ]),
                  ),),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
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
                          ])
                      ],),
                  ),),

                SizedBox(height: 10,),

                Container(
                  height: 145 ,width: MediaQuery.of(context).size.width*.92,

                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Car’s Center",style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 16),),
                          SizedBox(height: 5,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(height:90,width: 60,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 51,height: 51,
                                          decoration: BoxDecoration(
                                              boxShadow: [BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 3,
                                              )],
                                              color:AppColor.primarytext,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Container(height: 25,width: 25,
                                              child: Image.asset("images/paychallan.png")),
                                        ),
                                        SizedBox(height: 3,),
                                        Text("Pay",style: TextStyle(fontSize: 10),),
                                        Text("Challans",style: TextStyle(fontSize: 10),),
                                      ])),
                              Column(
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Image.asset("images/crimereporter.png",),
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Crime",style: TextStyle(fontSize: 10),),
                                    Text("Reporter",style: TextStyle(fontSize: 10),),
                                  ]),

                              Column(
                                  children: [
                                    Container(
                                      width: 51,height: 51,
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 3,
                                          )],
                                          color:AppColor.primarytext,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Image.asset("images/rtocenter.png",height: 10,width: 10,),
                                      ),),
                                    SizedBox(height: 3,),
                                    Text("RTO",style: TextStyle(fontSize: 10),),
                                    Text("Center",style: TextStyle(fontSize: 10),),
                                  ]),
                              Column(
                                  children: [
                                    Container(
                                        width: 51,height: 51,
                                        decoration: BoxDecoration(
                                            boxShadow: [BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 3,
                                            )],
                                            color:AppColor.primarytext,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset("images/pucccenter.png",height: 24,width: 24,),
                                        ),),
                                    SizedBox(height: 3,),
                                    Text("PUCC",style: TextStyle(fontSize: 10),),
                                    Text("Center",style: TextStyle(fontSize: 10),),
                                  ])
                            ],),






                        ]),
                  ),),

                SizedBox(height: 10 ,),

                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Trending",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    //SizedBox(height: 5,),
                    Stack(
                      children:[
                        Container(
                        height: 200,width:350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9)
                        ),
                        child: Image.asset("images/banner.png",),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Save',style: TextStyle(fontSize: 25,
                                      color: Color(0xFFFBFF35)),),
                                  Icon(Icons.currency_rupee,size: 25,color: Color(0xFFFBFF35)),
                                  Text('500',style: TextStyle(fontSize: 25,
                                      color: Color(0xFFFBFF35)),),
                                ],
                              ),
                              Text('On Your First EV Parking',style: TextStyle(fontSize: 16,
                                color: Color(0xFFFFFFFF),),),

                              SizedBox(height: 5,),

                              Text('We provide dedicated monthly',
                                style: TextStyle(fontSize: 10,color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400),),

                              Text('parking with surveillance',
                                style: TextStyle(fontSize: 10,color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w400),),


                            ],),),
                        Positioned(bottom: 35, left: 205,
                            child: Image.asset("images/happycustomer.png",height: 26,width: 47,)),

                        Positioned(bottom: 35,left: 255,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("100 +",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600,
                                  color: Colors.white),),
                              SizedBox(height: 0,),
                              Text("Happy Customers",style: TextStyle(fontSize: 6,fontWeight:FontWeight.w400, color: Colors.white),),
                            ],
                          ),
                        )
                      ]
                    )


                  ],
                ),

                SizedBox(height: 10,),

                Container(
                  height: 145 ,width: MediaQuery.of(context).size.width*.92,

                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Exclusive Offers",style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 16),),

                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(height:90,width: 60,
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 51,height: 51,
                                            decoration: BoxDecoration(
                                                boxShadow: [BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 3,
                                                )],
                                                color:AppColor.primarytext,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Image.asset("images/rewards.png"),
                                          ),
                                          SizedBox(height: 3,),
                                          Text("Rewards",style: TextStyle(fontSize: 10),),])),
                                Column(
                                    children: [
                                      Container(
                                        width: 51,height: 51,
                                        decoration: BoxDecoration(
                                            boxShadow: [BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 3,
                                            )],
                                            color:AppColor.primarytext,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Image.asset("images/discounts.png"),
                                      ),
                                      SizedBox(height: 3,),
                                      Text("Discounts",style: TextStyle(fontSize: 10),),
                                    ]),

                                Column(
                                    children: [
                                      Container(
                                        width: 51,height: 51,
                                        decoration: BoxDecoration(
                                            boxShadow: [BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 3,
                                            )],
                                            color:AppColor.primarytext,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Image.asset("images/refer&win.png"),),
                                      SizedBox(height: 3,),
                                      Text("Refer & Win",style: TextStyle(fontSize: 10),),

                                    ]),


                              ],),
                          ),

                        ]),
                  ),),

                SizedBox(height: 10,),

                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("How parkqwik works ?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    //SizedBox(height: 5,),
                    Stack(
                        children:[
                          Container(
                            height: 152,width:328,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                gradient: LinearGradient(
                                    colors: [Color(0xFF9EFFE1),
                                      Color(0xFFE9FFF8)],
                                    begin: Alignment.topCenter,
                                    end:Alignment.bottomCenter,
                                    stops: [.2,.8]
                                )
                            ),
                            child: Center(child:Image.asset("images/iphone.png") ,),
                          ),
                          Positioned(top: 65,right: 160,
                              child: Icon(Icons.play_circle,color: AppColor.primary,size: 24,))


                        ]
                    )


                  ],
                ),

                SizedBox(height: 10,),






              ],),
          ),




        ],
        ),
      ),

    );
  }
}
