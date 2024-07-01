import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parkqwik/colors.dart';

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
                  height: 215,width: MediaQuery.of(context).size.width*.92,

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
                        Text("Services",style: TextStyle(fontWeight: FontWeight.w600,
                        fontSize: 16),),

                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                              ),
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
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/cw.png",width: 40,),
                                  Text("Car Wash",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),

                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/vi.jpeg",width: 40,),
                                  Text("Vehicle",style: TextStyle(fontSize: 10),),
                                  Text("Insurance",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,width: 60,
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
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
                              ),
                              child: Column(
                                children: [
                                  Image.asset("images/services/vp.png",width: 40,),
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
                        Text("FASTag Recharge",style: TextStyle(fontWeight: FontWeight.w600,
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

                        Text("Discover",style: TextStyle(fontWeight: FontWeight.w600,
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
                  Text("Others",style: TextStyle(fontWeight: FontWeight.w600,
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
                              child: Image.asset("images/hs/others/img.png"),
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
                      Text("Deals For You",style: TextStyle(fontWeight: FontWeight.w600,
                          fontSize: 16),),

                      SizedBox(height: 10,),

                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                              children:[ Container(height: 136,width: 148,
                                  child: Image.asset("images/hs/others/deals/img.png"),
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


              ],
            ),
          )
        ],
        ),
      ),

    );
  }
}
