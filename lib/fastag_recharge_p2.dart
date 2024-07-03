import 'package:flutter/material.dart';

import 'colors.dart';

class FastagRechargeP2 extends StatefulWidget {
  const FastagRechargeP2({super.key});

  @override
  State<FastagRechargeP2> createState() => _FastagRechargeP2State();
}

class _FastagRechargeP2State extends State<FastagRechargeP2> {

  //TextEditingController vehiclenum = TextEditingController();
  String vehiclenum="";

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter Vehicle or Chassis Number",style: TextStyle(fontWeight: FontWeight.w500,
              fontSize: 16,),),
            SizedBox(height: 3,),
            Text("Get upto 100% cashback on first 3 Fastag Recharge",
              style: TextStyle(color:Colors.grey ,
                  fontSize: 14,fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),

            Container( height: 40,width: 318,
              child: TextField(decoration: InputDecoration(
                  focusColor: Color(0xFF1A9E75),
                   hintText: "Enter Vehicle Number",
                   hintStyle: TextStyle(color:Color(0xFFAFAFAF),
                       fontSize: 14,fontWeight: FontWeight.w400 ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )
              ),
                //controller: vehiclenum,
                onChanged: (value){
                setState(() {
                  vehiclenum=value;
                });
                },

              ),
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
            Spacer(),

            Container(height: 41,width: 314,
                child: ElevatedButton(onPressed:null,
                  style: ButtonStyle(
                    //surfaceTintColor: MaterialStateProperty.all(AppColor.primary),
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


    );
  }
}
