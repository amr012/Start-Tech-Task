import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:start_tech_task/controllers/login_controller.dart';
import 'package:start_tech_task/custom_widgets/custom_round_button.dart';
import 'package:start_tech_task/custom_widgets/custom_text_from_field.dart';
import 'package:start_tech_task/utils/colors/colors.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final _controller = Get.put(LoginController());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset(
                            "assets/images/ali_fouad_logo.png",
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Login",
                            style: TextStyle(color: mainColor, fontSize: 24),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: CustomTextFormField(
                              label: "Email Address",
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "required";
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: CustomTextFormField(
                                label: "Password",
                                controller: passwordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "required";
                                  }
                                }),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10),
                            child: CustomRoundedButton(
                                title: "Login",
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    _controller.login(emailController.text,
                                        passwordController.text);
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
                            Text(
                              "Already have an account? ",
                              style: TextStyle(color: textColor, fontSize: 15),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Get.to(LoginView());
                                },
                                child: Text(
                                  "Login",
                                  style:
                                      TextStyle(color: mainColor, fontSize: 15),
                                )),
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
