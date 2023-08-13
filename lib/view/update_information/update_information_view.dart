import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../controllers/update_info_controller.dart';
import '../../custom_widgets/custom_round_button.dart';
import '../../custom_widgets/custom_text_from_field.dart';
import '../../utils/colors/colors.dart';
import '../../utils/shared_preferences/cashe_helper.dart';

class UpdateInformationView extends StatefulWidget {
   UpdateInformationView({Key? key}) : super(key: key);

  @override
  State<UpdateInformationView> createState() => _UpdateInformationViewState();
}

class _UpdateInformationViewState extends State<UpdateInformationView> {
   final _controller = Get.put(UpdateInfoController());

   TextEditingController emailController = TextEditingController();

   TextEditingController phoneController = TextEditingController();

   TextEditingController nameController = TextEditingController();

   @override
  void initState() {
     nameController.text = CacheHelper.getData(key: "name");
     emailController.text = CacheHelper.getData(key: "email");
     phoneController.text = CacheHelper.getData(key: "phone");
    super.initState();
  }


   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text("Update Information",
          style: TextStyle(color: Colors.white,fontSize: 22),),
      ),
      body: Obx(() => ModalProgressHUD(
        inAsyncCall: _controller.isLoading,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const  SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: CustomTextFormField(
                    label: "Name",
                    controller: nameController,
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
                      label: "Phone Number",
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "required";
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50, ),
                  child: CustomTextFormField(
                      label: "Email Address",
                      controller: emailController,
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
                      title: "Save",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          _controller.updateInfo(emailController.text, phoneController.text,
                              nameController.text, "+20");
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
