import 'package:flutter/material.dart';

import 'colors.dart';

class Protocols extends StatefulWidget {
  const Protocols({super.key});

  @override
  State<Protocols> createState() => _ProtocolsState();
}

class _ProtocolsState extends State<Protocols> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Protocols',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
            color: AppColor.appbartext) ,),
        leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
          onPressed: () {
            Navigator.pop(context);
          },),
        backgroundColor: AppColor.primary,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ExpansionTile(title: Text("Select Your State",
                // style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),)
                ListTile(tileColor: Color(0xFFF0FFFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    //side: BorderSide(color: Colors.black),
                  ),
                  leading: Icon(Icons.traffic,color: AppColor.primary,size: 43,),
                  title: Text("Traffic fines in Tamil Nadu",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500
                  ),),
                  subtitle: Text("List of traffic fines as per Motor Vehicle (Amendment) Act",
                    style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400),),
                ),
                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                 child:Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Row(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Container(height: 35,width: 197,
                           child: Padding(
                             padding: const EdgeInsets.only(top: 8.0),
                             child: Text("General",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                           )),
                       VerticalDivider(),
                       SizedBox(width: 15,),
                       Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                       Padding(
                         padding: const EdgeInsets.only(right: 15.0),
                         child: Text("100",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                             color: AppColor.primary),),
                       )
                     ],
                   ),
                 ),
                ),
                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(height: 35,width: 197,
                            child: Text("Rules of road regulation violation",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("100",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )],),),),

                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(height: 35,width: 197,
                            child: Text("Disobedience of authorities orders",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("500",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(height: 35,width: 197,
                            child: Text("Unauthorized use of vehicles without license",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),

                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("1000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(height: 35,width: 197,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Driving without license",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("5000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(height: 35,width: 197,
                            child: Text("Driving without valid Driving License",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),

                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("500",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8,),

                Container(height: 64,width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(height: 35,width: 197,
                            child: Text("Driving despite disqualification",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),

                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("500",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )),
    );
  }
}
