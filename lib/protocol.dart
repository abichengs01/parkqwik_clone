import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Protocols extends StatefulWidget {
  const Protocols({super.key});

  @override
  State<Protocols> createState() => _ProtocolsState();
}

class _ProtocolsState extends State<Protocols> {

  TextEditingController _stateController = TextEditingController();
  String _selectedState = '';

  final List<String> statesList = [
    'Andhra Pradesh', 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh',
    'Goa', 'Gujarat', 'Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka',
    'Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur', 'Meghalaya', 'Mizoram',
    'Nagaland', 'Odisha', 'Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu', 'Telangana',
    'Tripura', 'Uttar Pradesh', 'Uttarakhand', 'West Bengal'
  ];

  void _openStateSelector() async {
    String selectedState = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Select State',style: TextStyle(
                    fontWeight: FontWeight.w600,color: Colors.black),),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: statesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final state = statesList[index];
                    return ListTile(
                      title: Text(state),
                      onTap: () {
                        setState(() {
                          _selectedState = state;
                          _stateController.text = _selectedState;
                        });},
                    );
                    },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
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
        scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container( height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Select Your State",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,
                            color:Color(0xFFAFAFAF) ),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.arrow_drop_down,color: AppColor.primary,size: 25,)
                      ),
                      controller: _stateController,
                      onTap: _openStateSelector,
                    ),
                  ),

                ),
                SizedBox(height: 8,),
                ListTile(tileColor: Color(0xFFF0FFFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
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
                              child: Text("Oversize vehicles",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
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
                              child: Text("Over Speeding",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("400",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
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
                              child: Text("Rash driving",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
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
                              child: Text("Drunken driving",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("2000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
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
                              child: Text("Speeding / Racing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
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
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Vehicle without permit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        Text("Up to",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        // SizedBox(width: 15,),
                        Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                        Text("5000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                            color: AppColor.primary),)
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
                              child: Text("Aggregators",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:ExpandablePanel(
                    header: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(width: 197,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10.0),
                                        child: Text("Overloading of passengers",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: SizedBox(height: 40,width: 1,child: Container(color: Colors.grey[400],),),
                                ),
                                //VerticalDivider(),
                                SizedBox(width: 20,),
                                Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                                Text("2000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                                    color: AppColor.primary),),]),
                    collapsed: Text("  "),
                    expanded: Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 40,bottom: 20),
                      child: Text("Rs. 2000 and Rs.1000 per extra tonne",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14,color:Color(0xFFA0A0A0) ),),
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
                              child: Text("Seat belt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
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
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Overloading two wheelers",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
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
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Helmets",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
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
                            child: Text("Not providing way for emergency vehicles",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                        VerticalDivider(),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
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
                              child: Text("Driving without Insurance",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
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
                              child: Text("Offences by Juveniles",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            )),
                        VerticalDivider(),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
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
                            child: Text("Power of offices to impound documents",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                        VerticalDivider(),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
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
                            child: Text("Offences committed by enforcing authorities",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                        VerticalDivider(),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),

                Container(width: 328,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      )],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:ExpandablePanel(
                    header: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(width: 197,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("PUC Violation",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(height: 40,width: 1,child: Container(color: Colors.grey[400],),),
                          ),
                          //VerticalDivider(),
                          SizedBox(width: 20,),
                          Icon(Icons.currency_rupee,size: 16,color: AppColor.primary,),
                          Text("1000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: AppColor.primary),),]),
                    collapsed: Text("  "),
                    expanded: Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 40,bottom: 20),
                      child: Column(
                        children: [
                          Text("For first offence Rs. 1000, For repeat",style: TextStyle(fontWeight: FontWeight.w400,
                              fontSize: 14,color:Color(0xFFA0A0A0) ),),
                          Text("offence Rs.2000",style: TextStyle(fontWeight: FontWeight.w400,
                              fontSize: 14,color:Color(0xFFA0A0A0) ),),
                        ],
                      ),
                    ),
                  ),
                ),



              ],
            ),
          )),
    );
  }
}
