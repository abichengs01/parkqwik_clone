import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'colors.dart';

class ReferWin extends StatefulWidget {
  const ReferWin({super.key});

  @override
  State<ReferWin> createState() => _ReferWinState();
}

class _ReferWinState extends State<ReferWin> {

  final List<Widget> sharepage=[ Cards.share1,Cards.share2];
  int _CurrentPage=0;
  buildCarouselIndicator(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i=0;i<sharepage.length;i++)
          Container( height: 5,width: 5,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: i== _CurrentPage?AppColor.primary: Color(0xFFD9D9D9),
                shape: BoxShape.circle
            ),
          )
      ],
    );
  }

  void _openSelector()  {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 320.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Text("Choose",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0,top: 5,),
                    child: CarouselSlider(
                        items: sharepage,
                        options:CarouselOptions(
                          //autoPlay: true,
                            viewportFraction: 1,
                            onPageChanged: (val,_){
                              setState(() {
                                _CurrentPage = val;
                              });
                            }
                        )
                    ),
                  ),
                  buildCarouselIndicator(),
                  SizedBox(height: 10,),
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Refer & Win',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
        color: AppColor.appbartext) ,),
    leading:IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
    onPressed: () {
    Navigator.pop(context);
    },),
    backgroundColor: AppColor.primary,
    ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(height: 190,width: MediaQuery.of(context).size.width*.92,
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
                    Text("Referral Link",style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 16,),),
                    SizedBox(height: 3,),
                    Text("Refer your friend and get assured rewards!",
                      style: TextStyle(color:Colors.grey ,
                          fontSize: 14,fontWeight: FontWeight.w400),),
                    SizedBox(height: 15,),

                    Container( height: 40,width: 295,
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
                            Text("https://parkqwik.referrallink.one...",style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.primary
                            ),),

                            Icon(Icons.content_copy,size: 24,color: AppColor.primary,)
                          ],
                        ),
                      ),),

                    SizedBox(height: 10,),

                    Container(height: 41,width: 292,
                        child: ElevatedButton(onPressed:(){
                          print("object");
                          _openSelector();
                        },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColor.primary),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),)),
                          child: Text("Refer Now",style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.w600,color:AppColor.primarytext
                          ),),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How it works?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(height: 65,width: 65,
                      child: Image.asset("images/r&w/girl.png")),
                  SizedBox(width: 15),
                  Icon(Icons.arrow_forward,color: AppColor.primary,size: 22,),
                  SizedBox(width: 15),
                  Container(height: 65,width: 65,
                      child: Image.asset("images/r&w/boy.png")),
                  SizedBox(width: 15),
                  Icon(Icons.arrow_forward,color: AppColor.primary,size: 22,),
                  SizedBox(width: 15),
                  Container(height: 65,width: 65,
                      child: Image.asset("images/r&w/gift.png")),
                ],
              ),
            ),
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Text("Step 1",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                  SizedBox(width: 75),
                  Text("Step 2",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                  SizedBox(width: 75),
                  Text("Step 3",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Container(height: 27,width: 90,
                    child: Text("Share referral link to your friends",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0)),),
                  ),
                  SizedBox(width: 25),
                  Container(height: 40,width: 102,
                    child: Text("Ask your friend to download app and enter vehicle details",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0)),),
                  ),
                  SizedBox(width: 25),
                  Container(height: 27,width: 82,
                    child: Text("You win rewards",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0)),),
                  ),
                ],),
            ),
            SizedBox(height: 25),

            Stack(
              children: [
                Container(height: 136,width: MediaQuery.of(context).size.width*.92,
                child: Image.asset("images/r&w/r&wbanner.png"),
              ),
                Positioned(bottom: 14,left: 16,
                  child: InkWell(onTap: (){
                    print("button");
                  },
                    child: Container(width: 79,height: 24,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      alignment: Alignment.center,
                      child: Text("Refer Now",style: TextStyle(fontSize: 10,
                          fontWeight: FontWeight.w600),),
                    ),
                  ),
                )
              ]
            ),




          ],
        ),
      ),

    );
  }
}
