import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_tech_task/utils/colors/colors.dart';
import 'package:start_tech_task/utils/shared_preferences/cashe_helper.dart';
import 'package:start_tech_task/view/intro/intro_view.dart';
import 'package:start_tech_task/view/update_information/update_information_view.dart';

import '../../custom_widgets/custom_card.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  String name = '';
  String email = '';
  String phone = '';
  @override
  void initState() {
    name = CacheHelper.getData(key: "name");
    email = CacheHelper.getData(key: "email");
    phone = CacheHelper.getData(key: "phone");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: const Text("Home Page",
        style: TextStyle(color: Colors.white,fontSize: 22),),
      ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const  Icon(Icons.person_2_outlined,color: mainColor,),
                      const  SizedBox(width: 15,),
                      Text(name,
                        style: TextStyle(color: textColor,fontSize: 17),)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        const   Icon(Icons.phone_android,color: mainColor,),
                        const   SizedBox(width: 15,),
                        Text(phone,
                          style: const TextStyle(color: textColor,fontSize: 17),)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const  Icon(Icons.email_outlined,color: mainColor,),
                      const   SizedBox(width: 15,),
                      Text(email,
                        style: const TextStyle(color: textColor,fontSize: 17),)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            CustomCard(
              onPressed: (){
                Get.to(UpdateInformationView( ));
              },
              title: "Update Information",
            ),
            CustomCard(
              onPressed: (){},
              title: "Change Password",
            ),
            CustomCard(
              onPressed: (){},
              title: "Delete Account",
            ),
            CustomCard(
              onPressed: (){
                CacheHelper.clearAllData();
                Get.offAll(IntroView());
              },
              title: "Logout",
            ),
          ],
        ),
    );
  }
}
