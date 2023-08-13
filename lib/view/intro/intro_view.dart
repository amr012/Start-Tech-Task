import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_tech_task/custom_widgets/custom_round_button.dart';
import 'package:start_tech_task/utils/colors/colors.dart';

import '../login_view/login_view.dart';
import '../register_view/register_view.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 70,),
              Image.asset("assets/images/ali_fouad_logo.png",height: 100,width: 100,),
              SizedBox(height: 15,),
              Text("Welcome to the app",style: TextStyle(color: mainColor,fontSize: 24),)
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),
                child: CustomRoundedButton(title: "Login", onPressed: (){
                  Get.to(LoginView());
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: MaterialButton(onPressed: (){
                  Get.to(RegisterView());

                },
                  height: 48,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: mainColor)
                  ),
                  child: Text("Register",style: TextStyle(color: mainColor,
                      fontSize: 20
                  ),),),
              ),
              SizedBox(height: 90,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Designed & Developed by ",style: TextStyle(color: textColor,fontSize: 15),),
                Text("Ali Fouad",style: TextStyle(color: mainColor,fontSize: 15),),
              ],
            ),
          )

        ],
      ),
    );
  }
}
