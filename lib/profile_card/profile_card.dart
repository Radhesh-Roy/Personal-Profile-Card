import 'package:flutter/material.dart';

import '../widget/custom_button.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});
  @override
  State<ProfileCard> createState() => _ProfileCardState();
}
class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDF2FA),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          width: double.infinity,
          child: Card(
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/radhesh.jpeg"),

                            ),
                          ),//profile image,
                          SizedBox(height: 5,),
                          Text("Radhesh Roy", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),),
                          SizedBox(height: 5,),
                          Text("Flutter Developer",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17, color: Colors.grey),),
                          SizedBox(height: 5,),
                          Text("A beginner Flutter Developer.Everyday working and learning new topic.",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,),),
                          SizedBox(height: 10,),
                        ],
                      ),),
                      Padding(padding: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(),),// Divider
                      Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                        spacing: 10,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              Icon(Icons.email, size: 20,),
                              Text("radheshroy0011@gmail.com", style: TextStyle(fontSize: 15, color: Colors.grey.shade700),)
                            ],
                          ),
                          Row(
                            spacing: 10,
                            children: [
                              Icon(Icons.phone, size: 20,),
                              Text("01789391948", style: TextStyle(fontSize: 15, color: Colors.grey.shade700),)
                            ],
                          ),
                          Row(
                            children: [
                              CustomButton()
                            ],
                          )
                        ],
                      ),)
              ])
          )
              ),
        ),
      )
    );
  }
}
