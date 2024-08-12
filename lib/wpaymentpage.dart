import 'package:flutter/material.dart';

import 'colors.dart';

class WPaymentPage extends StatefulWidget {
  const WPaymentPage({super.key});

  @override
  State<WPaymentPage> createState() => _WPaymentPageState();
}

class _WPaymentPageState extends State<WPaymentPage> {

  int _groupvalue=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Options',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
            color: AppColor.appbartext) ,),
        leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
          onPressed: () {
            Navigator.pop(context);
          },),
        backgroundColor: AppColor.primary,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 162,width: MediaQuery.of(context).size.width*.92,

              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,top: 10),
                    child: Text("Preferred Payment Option",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  ),
                 RadioListTile(value: 0, groupValue: _groupvalue,
                     onChanged: (newValue){
                   setState(() {
                     _groupvalue=newValue!;
                   });
                     },
                 title: Text("Merchent 1-Click UPI",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                   subtitle: Text("******1515",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                   secondary: Image.asset("images/paymentoptions/upi.png",height: 20,width: 41,),
                 ),
                  Center(
                    child: Container(height: 40,width: 213,
                        child: ElevatedButton(
                          onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> WPaymentPage()));},
                          style: ButtonStyle(
                            //surfaceTintColor: MaterialStateProperty.all(AppColor.primary),
                              backgroundColor: MaterialStateProperty.all(AppColor.primary),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),)),
                          child: Row(
                            children: [
                              Text("Pay",style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white
                              ),),
                              Icon(Icons.currency_rupee,size: 16,color: Colors.white,),
                              Text("500 In Single Click",style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white
                              ),),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 260,width: MediaQuery.of(context).size.width*.92,

              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,top: 10),
                    child: Text("UPI",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  ),
                  RadioListTile(value: 1, groupValue: _groupvalue,
                    onChanged: (newValue){
                      setState(() {
                        _groupvalue=newValue!;
                      });
                    },
                    title: Text("Google Pay",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    secondary: Image.asset("images/paymentoptions/gpay.png",height: 40,width: 40,),
                  ),
                  RadioListTile(value: 2, groupValue: _groupvalue,
                    onChanged: (newValue){
                      setState(() {
                        _groupvalue=newValue!;
                      });
                    },
                    title: Text("Phone Pe",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    secondary: Image.asset("images/paymentoptions/phnpay.png",height: 30,width: 30,),
                  ),
                  RadioListTile(value: 3, groupValue: _groupvalue,
                    onChanged: (newValue){
                      setState(() {
                        _groupvalue=newValue!;
                      });
                    },
                    title: Text("Paytm",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    secondary: Image.asset("images/paymentoptions/paytm.png",height: 14,width: 42,),
                  ),
                  RadioListTile(value: 4, groupValue: _groupvalue,
                    onChanged: (newValue){
                      setState(() {
                        _groupvalue=newValue!;
                      });
                    },
                    title: Text("Mobikwik",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    secondary: Image.asset("images/paymentoptions/mobik.png",height: 23,width: 30,),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 90,width: MediaQuery.of(context).size.width*.92,

              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,top: 10),
                    child: Text("Cards",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  ),
                  RadioListTile(value: 5, groupValue: _groupvalue,
                    onChanged: (newValue){
                      setState(() {
                        _groupvalue=newValue!;
                      });
                    },
                    title: Text("Debit/Credit Cards",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    secondary: Image.asset("images/hs/atmcard.png",height: 25,width: 40),
                  ),




                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 63,

            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                )],
                color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 15),
              child: Row(
                children: [
                  Icon(Icons.currency_rupee),
                  Text('500',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  Spacer(),
                  Container(height: 41,width: 178,
                      child: ElevatedButton(onPressed:null,
                        style: ButtonStyle(

                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),)),
                        child: Text("Proceed To Pay",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                        ),),
                      ))
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
