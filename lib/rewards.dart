import 'package:flutter/material.dart';
import 'package:parkqwik/rewards_sub_pages/active.dart';
import 'package:parkqwik/rewards_sub_pages/expired.dart';

import 'colors.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF828381),

        body: Column(
          children: [
            Stack(
              children:[Container(
                child: Image.asset("images/rdbanner1.png"),
              ),
                Positioned(top: 40,left: 5,
                  child: IconButton(icon: Icon(Icons.arrow_back),iconSize: 24,color: AppColor.appbartext,
                    onPressed: () {
                      Navigator.pop(context);
                    },),
                ),
                Positioned(top: 52,left: 60,
                  child: Text('Rewards',style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,
                      color: AppColor.appbartext) ,),
                ),
              ]),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  )
              ),
              child: TabBar(dividerColor: Colors.white,labelColor: Colors.black,labelPadding: EdgeInsets.all(15.0),
                  indicatorColor: AppColor.primary,
                  tabs: [
                Text("Active",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                Text("Expired",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)
              ]),
            ),
            Expanded(child:TabBarView(
              children: [
                Center(child: Active() ),
                Center(child:

                
                Expired()
                ),
              ],
            ))

          ],
        ),


      ),
    );
  }
}
