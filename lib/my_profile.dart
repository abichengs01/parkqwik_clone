import 'package:flutter/material.dart';

import 'colors.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _value=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Profile',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
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
            child: Stack(
              children: [
                Image.asset("images/hs/profile.png",height: 91,width: 91,),
                Positioned(right: 5,bottom: 15,
                    child: Icon(Icons.add_circle,size: 22,color: AppColor.primary,))
              ],),),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Full Name*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(height: 40,width: 318,
                  child: TextField(
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        hintText: "Enter your full name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),),),
                SizedBox(height: 15,),

                Text("Mobile Number*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(height: 40,width: 318,
                  child: TextField(

                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      prefixText: "+91",
                        prefixStyle: TextStyle(color: Colors.black,fontSize: 11),
                        hintText: "Enter your mobile number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),),),
                SizedBox(height: 15,),


                Text("Email ID",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(height: 40,width: 318,
                  child: TextField(
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        hintText: "Enter Your Email ID",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),),),
                SizedBox(height: 15,),

                Text("Gender",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Row(
                  children: [
                    Radio(value: 0, groupValue: _value,
                      onChanged: (newValue){
                        setState(() {
                          _value=newValue!;
                        });
                      },),
                    Text("Male",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    Radio(value: 1, groupValue: _value,
                      onChanged: (newValue){
                        setState(() {
                          _value=newValue!;
                        });
                        },),
                    Text("Female",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),

                  ],),
                Text("Date of Birth",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(height: 40,width: 318,
                  child: TextField(
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        hintText: "Select Your Date of Birth",
                        suffixIcon: Icon(Icons.calendar_month),
                        suffixIconColor: AppColor.primary,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),),),
                SizedBox(height: 100,),

                Container(height: 41,width: 317,
                    child: ElevatedButton(onPressed:(){},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColor.primary),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),)),
                      child: Text("Save",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,color:AppColor.primarytext
                      ),),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
