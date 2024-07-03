import 'package:flutter/material.dart';
import 'package:parkqwik/colors.dart';

import 'fastag_recharge_p2.dart';

class FastagRechargeP1 extends StatefulWidget {
  const FastagRechargeP1({super.key});

  @override
  State<FastagRechargeP1> createState() => _FastagRechargeP1State();
}

class _FastagRechargeP1State extends State<FastagRechargeP1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FASTag Recharge',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
        color: AppColor.appbartext) ,),
        leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
          onPressed: () {
          Navigator.pop(context);
          },),
        backgroundColor: AppColor.primary,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15,bottom: 15),
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                        children: [
                          Container(height: 130,width: 223,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF4E34F0),
                                      Color(0xFF6753E3)
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
                              child: Image.asset("images/ycarside.png",height: 24,width: 56,)),

                        ])
                  ],),
              ),),
            Container(height: 200,width: MediaQuery.of(context).size.width*.92,
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

                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FastagRechargeP2()));},
                      child: Container( height: 40,width: 295,
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
                            Text("Add vehicle or chassis number",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w500,color: AppColor.primary
                            ),),

                            Icon(Icons.arrow_forward,size: 24,color: AppColor.primary,)
                          ],
                        ),
                      ),),
                    ),

                    SizedBox(width: 5,),

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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            )
          ],
        ),
      ),
    );
  }
}
