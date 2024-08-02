import "package:flutter/material.dart";

import "coupon_sample_page.dart";
class Active extends StatefulWidget {
  const Active({super.key});

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 25,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("images/rewards/a1.png",height: 157,width: 157,),
                Image.asset("images/rewards/a2.png",height: 157,width: 157,),
              ],
            ),
            Row(
              children: [
                Image.asset("images/rewards/a3.png",height: 157,width: 157,),
                Image.asset("images/rewards/a4.png",height: 157,width: 157,),
              ],
            ),
            Row(
              children: [
                Image.asset("images/rewards/a5.png",height: 157,width: 157,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Coupon_pg1()));
                },
                    child: Image.asset("images/rewards/a6.png",height: 157,width: 157,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
