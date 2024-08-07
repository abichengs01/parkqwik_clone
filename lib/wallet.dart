import 'package:flutter/material.dart';

import 'colors.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  TextEditingController vehiclenum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wallet',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
            color: AppColor.appbartext) ,),
        leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
          onPressed: () {
            Navigator.pop(context);
          },),
        backgroundColor: AppColor.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 295,width: MediaQuery.of(context).size.width*.92,

              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  ListTile(leading: Image.asset("images/hs/colorwallet.png",height: 34,width: 34),
                  tileColor: Color(0xFFF9F9F9),
                  title: Text("ParkQwik Wallet",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    subtitle: Row(
                      children: [
                        Text("Available Balance:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColor.primary),),
                        Icon(Icons.currency_rupee,size: 12,color: AppColor.primary,),
                        Text("100",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColor.primary),),
                      ],
                    )
                  ),
                  SizedBox(height: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Enter Amount",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      SizedBox(height: 10,),
                      Container( height: 46,width: 292,
                        child: TextField(decoration: InputDecoration(
                            prefixIcon: Icon(Icons.currency_rupee),
                            focusColor: Color(0xFF1A9E75),
                            hintText: "Eg: 100",
                            hintStyle: TextStyle(color:Color(0xFFAFAFAF),
                                fontSize: 14,fontWeight: FontWeight.w400 ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                          controller: vehiclenum,
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 66,height: 31,
                        decoration: BoxDecoration(
                            color: AppColor.primarytext,
                            border: Border.all(color: AppColor.primary),
                            borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee,color: AppColor.primary,size: 14,),
                            Text("200",style: TextStyle(color: AppColor.primary),)
                          ],
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(width: 66,height: 31,
                        decoration: BoxDecoration(
                          color: AppColor.primarytext,
                          border: Border.all(color: AppColor.primary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee,color: AppColor.primary,size: 14,),
                            Text("500",style: TextStyle(color: AppColor.primary),)
                          ],
                        ),
                      ),SizedBox(width: 8,),
                      Container(width: 66,height: 31,
                        decoration: BoxDecoration(
                          color: AppColor.primarytext,
                          border: Border.all(color: AppColor.primary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee,color: AppColor.primary,size: 14,),
                            Text("700",style: TextStyle(color: AppColor.primary),)
                          ],
                        ),
                      ),SizedBox(width: 8,),
                      Container(width: 66,height: 31,
                        decoration: BoxDecoration(
                          color: AppColor.primarytext,
                          border: Border.all(color: AppColor.primary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee,color: AppColor.primary,size: 14,),
                            Text("900",style: TextStyle(color: AppColor.primary),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(height: 41,width: 292,
                      child: ElevatedButton(onPressed:null,
                        style: ButtonStyle(
                          //surfaceTintColor: MaterialStateProperty.all(AppColor.primary),
                            backgroundColor: MaterialStateProperty.all(AppColor.primary),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),)),
                        child: Text("Add Now",style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w600,color:AppColor.primarytext
                        ),),
                      )),],),),
            SizedBox(height: 15,),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Image.asset("images/hs/wallet_banner_1.png",height: 130,width: 223),
                  SizedBox(width: 10,),
                  Image.asset("images/hs/wallet_banner_2.png",height: 130,width: 223),
                  SizedBox(width: 10,),
                  Image.asset("images/hs/wallet_banner_3.png",height: 130,width: 223),
                ],),
            ),
            SizedBox(height: 15,),
            ListTile(
              tileColor: AppColor.primarytext,
              leading: Image.asset("images/hs/atmcard.png",height: 19,width: 30),
              title: Text("Saved Cards",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,color: AppColor.primary,),
            )
          ],
        ),
      ),
    );
  }
}
