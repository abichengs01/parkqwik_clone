import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class VehicleInsurance extends StatefulWidget {
  const VehicleInsurance({super.key});

  @override
  State<VehicleInsurance> createState() => _VehicleInsuranceState();
}

class _VehicleInsuranceState extends State<VehicleInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Vehicle Insurance ',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
            color: AppColor.appbartext) ,),
        leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
          onPressed: () {
            Navigator.pop(context);
          },),
        backgroundColor: AppColor.primary,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                        children: [
                          Container(height: 130,width: 328,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFC440F4),
                                      Color(0xFFDD7BFF),
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
                                  Text('Get Your Car Insurance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),),),
                                  Text('Today!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),),),
                                  Row(
                                    children: [
                                      Text('Starting @',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF),),),
                                      Icon(Icons.currency_rupee,size: 12,color:Color(0xFFFFFFFF) ,),
                                      Text('799/month*',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF),),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(width: 68,height: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("View Plan",style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.w600),),
                                  ),],),),),
                          Positioned(bottom: 0,right: 25,
                              child: Image.asset("images/ycarlside.png",height: 70,width: 150,)),
        
                    Positioned(bottom: 0,right: 5,
                              child: Image.asset("images/girl.png",height: 100,width: 194,))
                        ]),
        
                    SizedBox(width: 10,),
                    Stack(
                        children: [
                          Container(height: 130,width: 328,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFF48B40),
                                      Color(0xFFFFC27B),
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
                                  Text('Get Your Bike Insurance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),),),
                                  Text('Today!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),),),
                                  Row(
                                    children: [
                                      Text('Starting @',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF),),),
                                      Icon(Icons.currency_rupee,size: 12,color:Color(0xFFFFFFFF) ,),
                                      Text('299/month*',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF),),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(width: 68,height: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("View Plan",style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.w600),),
                                  ),],),),),
                          Positioned(bottom: 5,right: 25,
                              child: Image.asset("images/scooty.png",height: 105,width: 100,)),
        
        
                        ]),
                    SizedBox(width: 10,),
        
        
                    Stack(
                        children: [
                          Container(height: 130,width: 328,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF4047F4),
                                      Color(0xFF7B90FF),
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
                                  Text('Drive Assured, Drive ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),),),
                                  Text('Insured!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),),),
                                  Row(
                                    children: [
                                      Text('Starting @',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF),),),
                                      Icon(Icons.currency_rupee,size: 12,color:Color(0xFFFFFFFF) ,),
                                      Text('499/month*',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF),),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(width: 68,height: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("View Plan",style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.w600),),
                                  ),],),),),
                          Positioned(bottom: 8,right: 25,
                              child: Image.asset("images/auto.png",height: 81,width: 124,)),
        
        
                        ]),
        
                  ],),
              ),
              SizedBox(height: 15,),
        
        
        
        
              Container(
                height: 180,width: MediaQuery.of(context).size.width*.92,
        
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                    )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Icon(FontAwesomeIcons.car,size: 20,),
                          //SizedBox(width: 5,),
                          Text("Car",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                          VerticalDivider(thickness: 19,color: Colors.black,),
                          SizedBox(width: 2,),
        
                          Icon(Icons.two_wheeler,size: 20,),
                          //SizedBox(width: 3,),
                          Text("Bike",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                          VerticalDivider(thickness: 19),
                          SizedBox(width: 2,),
        
                          Icon(Icons.electric_rickshaw,size: 20,),
                          //SizedBox(width: 3,),
                          Text("Auto",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                          VerticalDivider(thickness: 19),
                          SizedBox(width: 2,),
        
                          Icon(Icons.electric_car,size: 20,),
                          //SizedBox(width: 3,),
                          Text("EV",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
        
        
                        ],),
                      ),
                      SizedBox(height: 10,),
        
                      Container(height: 50,width: 292,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Vehicle Number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
        
                      Container(height: 41,width: 292,
                          child: ElevatedButton(onPressed:(){},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(AppColor.primary),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),)),
                            child: Text("Recharge Now",style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w600,color:AppColor.primarytext
                            ),),
                          ))
        
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
        
              Container( height: 59,width:MediaQuery.of(context).size.width*.92,
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
                      Row(
                        children: [
                          Image.asset('images/car_insuranceicon1.png',height: 19,width: 30,),
                          SizedBox(width:5,),
                          Text("Renew Your Vehicle Insurance",style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward,size: 24,color: AppColor.primary,)
                    ],
                  ),
                ),),
              SizedBox(height: 15,),
        
              Text("FAQs",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
              SizedBox(height: 15,),
              
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                    )],color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: ExpansionTile(
                  title: Text("Why do I need car insurance?",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Car insurance offers financial protection"
                        " for accidents, theft, or vehicle damage and is "
                        "often legally mandated, requiring at least basic liability coverage in many places.",
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  ),
                ],),
              ),
              SizedBox(height: 15,),
        
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                    )],color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: ExpansionTile(
                  title: Text("What does car insurance typically cover?",
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Car insurance typically covers liability (bodily injury and property damage), collision,"
                          " comprehensive (non-collision incidents like theft), and uninsured/underinsured motorist incidents.",
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                  ],),
              ),
              SizedBox(height: 15,),
        
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                    )],color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: ExpansionTile(
                  title: Text("Is it necessary to notify my insurance company if I modify my car?",
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Modifications can impact coverage; "
                          "inform your insurer to ensure your policy reflects your vehicle's current state accurately.",
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                  ],),
              ),
              SizedBox(height: 15,),
        
            ],
          ),
        ),
      ),
    );
  }
}
