
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_tech_task/utils/shared_preferences/cashe_helper.dart';
import 'package:start_tech_task/view/home_page/home_page_view.dart';
import 'package:start_tech_task/view/intro/intro_view.dart';

import '../../utils/colors/colors.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
      if(CacheHelper.getData(key: "isLogged") == null){
        Get.to(IntroView());
      }else{
        Get.to(HomePageView());

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/ali_fouad_logo.png",
          height: 200,width: 200,),
          SizedBox(height: 20,),
          Text("ALI FOUAD",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: mainColor
            ),),
          SizedBox(
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
