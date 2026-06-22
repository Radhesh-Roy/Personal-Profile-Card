
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 150,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/radhesh.jpeg",
                                  ),
                                ),
                              ), //profile image,
                              SizedBox(height: 5),
                              Text(
                                "Radhesh Roy",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Flutter Developer",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "A beginner Flutter Developer.Everyday working and learning new topic.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Divider(),
                        ), // Divider
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Column(
                            spacing: 10,
                            children: [
                              Row(
                                spacing: 10,
                                children: [
                                  Icon(Icons.email, size: 20),
                                  Text(
                                    "radheshroy0011@gmail.com",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 10,
                                children: [
                                  Icon(Icons.phone, size: 20),
                                  Text(
                                    "01789391948",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 15,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap:(){
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                          backgroundColor: Colors.grey,
                                          content: Text("You have followed Radhesh Roy")));
                                    },
                                    child: CustomButton(
                                      buttonTitle: 'Follow',
                                      backgroundColor: Colors.blue,
                                      titleColor: Colors.white,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      showDialog(
                                        barrierDismissible: false,
                                        context:context, builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.white,
                                          title: Text("Details", style: TextStyle(fontSize: 20.sp),),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.person, size: 12.sp,),
                                                  SizedBox(width: 5,),
                                                  RichText(text: TextSpan(
                                                      text: "Name: ",
                                                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                                      children: [
                                                        TextSpan(
                                                          text: "Radhesh Roy",
                                                          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                                        )
                                                      ]
                                                  ))
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Icon(Icons.shopping_bag, size: 12.sp,),
                                                  SizedBox(width: 5,),
                                                  RichText(text: TextSpan(
                                                      text: "Designation: ",
                                                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                                      children: [
                                                        TextSpan(
                                                          text: "Flutter Developer",
                                                          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                                        )
                                                      ]
                                                  ))
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Icon(Icons.phone, size: 12.sp,),
                                                  SizedBox(width: 5,),
                                                  RichText(text: TextSpan(
                                                      text: "Phone: ",
                                                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                                      children: [
                                                        TextSpan(
                                                          text: "01789391948",
                                                          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                                        )
                                                      ]
                                                  ))
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Icon(Icons.email_outlined, size: 12.sp,),
                                                  SizedBox(width: 5,),
                                                  RichText(text: TextSpan(
                                                      text: "Email: ",
                                                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                                      children: [
                                                        TextSpan(
                                                          text: "radheshroy0011@gmail.com",
                                                          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                                        )
                                                      ]
                                                  ))
                                                ],
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            SizedBox(
                                              height:30.h,
                                              width: 70.w,
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    overlayColor:Colors.transparent,
                                                  ),
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Cancel", style: TextStyle(fontSize: 8.sp),)),
                                            )
                                          ],
                                        );
                                      },);
                                    },
                                    child: CustomButton(
                                      buttonTitle: 'View Profile',
                                      borderColor: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Text(
                    "Interests",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/beautiful-view-nature-mountains-near-konigssee-lake-bavaria-germany-blue-sky-clouds-97444419.jpg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Travel",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Exploring new place around new world",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.sp,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            height: 32,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: const Center(
                              child: Text(
                                "View More",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}