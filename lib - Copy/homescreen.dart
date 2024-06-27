import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green[700],
      //
      // ),

      body: Stack(
        children: [
        Container(
            height: 230,
            decoration: BoxDecoration(
                color: Colors.green,
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
                  CircleAvatar( radius: 25,
                    backgroundImage: AssetImage("images/hs/profile.png"),),
                   SizedBox(width: 20,),
                  Container(width: 159,height: 32,
                    child: ElevatedButton.icon(onPressed: (){},
                        icon:(Icon(Icons.add_circle)), label: Text("Add Vehicle")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image.asset("images/hs/wallet.png"),
                  ),
                  SizedBox(width: 20,),


                ],
              ),
              SizedBox(height: 15,),

              Container(
                height: 220,width: 330,
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
                                Image.asset("images/hs/lpin.png",width: 40,),
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
                                Image.asset("images/hs/ec.png",width: 40,),
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
                                Image.asset("images/hs/cw.png",width: 40,),
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
                                Image.asset("images/hs/vi.jpeg",width: 40,),
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
                                Image.asset("images/hs/truck.png",width: 40,),
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
                                Image.asset("images/hs/challan.png",width: 40,),
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
                                Image.asset("images/hs/toll.png",width: 40,),
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
                                Image.asset("images/hs/vp.png",width: 40,),
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

              Container(height: 300,width: 330,
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
                        fontSize: 14,),),
                    ],
                  ),
                ),

              )




            ],
          ),
        )
      ],
      ),

    );
  }
}
