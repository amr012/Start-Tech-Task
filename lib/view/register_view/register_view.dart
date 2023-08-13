import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:start_tech_task/controllers/register_controller.dart';
import 'package:start_tech_task/custom_widgets/custom_round_button.dart';
import 'package:start_tech_task/custom_widgets/custom_text_from_field.dart';
import 'package:start_tech_task/utils/colors/colors.dart';

class RegisterView extends StatelessWidget {
   RegisterView({Key? key}) : super(key: key);
   final _controller = Get.put(RegisterController());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() => ModalProgressHUD(
        inAsyncCall: _controller.isLoading,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 70,),
                      Image.asset("assets/images/ali_fouad_logo.png",height: 100,width: 100,),
                      SizedBox(height: 15,),
                      Text("Register",style: TextStyle(color: mainColor,fontSize: 24),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: CustomTextFormField(label: "Full Name", controller: nameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "required";
                              }
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                        child: CustomTextFormField(label: "55994435", controller: phoneController,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "required";
                              }
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: CustomTextFormField(label: "Email Address", controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "required";
                              }
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                        child: CustomTextFormField(label: "Password", controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "required";
                              }
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: CustomTextFormField(label: "Confirm Password", controller: confirmPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "required";
                              } else if (passwordController.text != value){
                                return "passwords not match";
                              }
                            }),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),
                        child: CustomRoundedButton(title: "Register", onPressed: (){
                          if(formKey.currentState!.validate()){
                            _controller.register(nameController.text, emailController.text,
                                passwordController.text, phoneController.text, "+20");
                          }

                        }),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ",style: TextStyle(color: textColor,fontSize: 15),),
                        Text("Login",style: TextStyle(color: mainColor,fontSize: 15),),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
