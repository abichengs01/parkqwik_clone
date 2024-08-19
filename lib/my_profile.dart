import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'colors.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _value=-1;
  TextEditingController dateInput = TextEditingController();

  void _openSelector()  {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 248,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Text("Choose",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,top: 5,),
                      child: Row(
                        children: [

                          Container(width: 65,
                            child: Column(
                              children: [
                                Image.asset("images/camera.png",width: 44,height: 40,),
                                SizedBox(height: 2,),
                                Text("Camera",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(width: 65,
                            child: Column(
                              children: [
                                Image.asset("images/gallery.png",width: 40,height: 31,),
                                SizedBox(height: 5,),
                                Text("Gallery",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(width: 80,
                            child: Column(
                              children: [
                                Image.asset("images/filemanager.png",height: 29,width: 40,),
                                SizedBox(height: 5,),
                                Text("File Manager",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(width: 65,
                            child: Column(
                              children: [
                                Image.asset("images/drive.png",height: 32,width: 36,),
                                SizedBox(height: 7,),
                                Text("Drive",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),


                        ],
                      )
                    ),

                    SizedBox(height: 40,),
                    Container(height: 41,width: 314,
                        child: ElevatedButton(onPressed:null,
                          style: ButtonStyle(

                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),)),
                          child: Text("Cancel",style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w600,
                          ),),
                        ))
                  ],
                ),


              ),
            )
        );
      },
    );
  }

  @override
  void initState() {
      dateInput.text = ""; //set the initial value of text field
    // TODO: implement initState
    super.initState();
  }

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

          InkWell(
            onTap: (){
              print('share');
              _openSelector();
            },
            child: Center(
              child: Stack(
                children: [
                  Image.asset("images/hs/profile.png",height: 91,width: 91,),
                  Positioned(right: 5,bottom: 15,
                      child: Icon(Icons.add_circle,size: 22,color: AppColor.primary,))
                ],),),
          ),

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
                      controller: dateInput,
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                          DateFormat('dd/MM/yyyy').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          setState(() {
                            dateInput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {}
                      },
                    decoration: InputDecoration(
                        hintText: "Select Your Date of Birth",
                        suffixIcon: Icon(Icons.calendar_month),
                        suffixIconColor: AppColor.primary,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ))
                  ),
                ),
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
