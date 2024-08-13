import 'package:flutter/material.dart';

import 'colors.dart';
import 'my_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              //child: Image.asset("images/hs/dp.png",fit: BoxFit.fill),
              height: 49,width: 49,
              //margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage("images/hs/dp.png"),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle
              ),),
            SizedBox(width: 10,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Krishna',style:TextStyle(fontSize:16,fontWeight: FontWeight.w500,
                    color: AppColor.appbartext) ,),
                Text('+91 8200089270',style:TextStyle(fontSize:14,fontWeight: FontWeight.w400,
                    color: AppColor.appbartext) ,),
              ],
            ),
          ],
        ),
        leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
          onPressed: () {
            Navigator.pop(context);
          },),
        backgroundColor: AppColor.primary,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 350,width: 400,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(height: 245,width: 245,
                        child: Image(image: AssetImage("images/qr.png"))),
                    SizedBox(height: 30,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 101,height: 28,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share,color: Colors.white,size: 14,),
                              Text("Share QR",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(width: 101,height: 28,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share,color: Colors.white,size: 14,),
                              Text("Share Link",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),




              ListTile(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfile()));},
                leading: Icon(Icons.person,color: AppColor.primary,size: 24,),
                title: Text("My Profile",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Your Personal Details",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.text_snippet_outlined,color: AppColor.primary,size: 24,),
                title: Text("Transactions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Your Transaction History, Bill Payments & more",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.shopping_cart_outlined,color: AppColor.primary,size: 24,),
                title: Text("Bookings & Orders ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Your Transaction History, Bill Payments & more",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.location_on_outlined,color: AppColor.primary,size: 24,),
                title: Text("Saved Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Manage Your Saved Address",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.credit_card,color: AppColor.primary,size: 24,),
                title: Text("My Wallet",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Manage Your Debit / Credit Cards",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.redeem,color: AppColor.primary,size: 24,),
                title: Text("Rewards",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Scratch Cards & Discounts",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.support_agent,color: AppColor.primary,size: 24,),
                title: Text("Help & Support",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Customer Support, FAQ’s & more",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Divider(),
              ),

              ListTile(
                leading: Icon(Icons.shield,color: AppColor.primary,size: 24,),
                title: Text("About Us",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                subtitle: Text("Privacy Policy, Terms & Conditions",style: TextStyle(fontSize: 12,
                    color:Color(0xFFA0A0A0),fontWeight: FontWeight.w400),),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,left: 25,right: 25,bottom: 15),
                child: ListTile(
                  leading: Icon(Icons.logout,color: AppColor.primary,size: 24,),
                  title: Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,
                  color: AppColor.primary),),

                  trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xFFA0A0A0),),
                ),
              ),


            ],
          ),
        ),

    );
  }
}
