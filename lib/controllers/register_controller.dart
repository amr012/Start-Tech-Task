import 'package:get/get.dart';
import 'package:start_tech_task/models/RegisterModel.dart';
import 'package:start_tech_task/repo/register_repo.dart';
import 'package:start_tech_task/utils/dio_utils/dio_utils.dart';
import 'package:start_tech_task/view/home_page/home_page_view.dart';

import '../utils/shared_preferences/cashe_helper.dart';

class RegisterController extends GetxController{


  RegisterRepo registerRepo = RegisterRepo();
  RegisterModel? registerModel;
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;


   register(String name, String email , String password, String phoneNumber, String countryCode)async{
     try{
       _isLoading.value = true;
       registerModel = await registerRepo.register(name, email, password, phoneNumber, countryCode);
       print(registerModel!.message);
       if(registerModel!.success == true ){
         CacheHelper.saveData(key: "token", value: registerModel!.data!.token);
         CacheHelper.saveData(key: "email", value: registerModel!.data!.email);
         CacheHelper.saveData(key: "name", value: registerModel!.data!.name);
         CacheHelper.saveData(key: "phone", value: registerModel!.data!.phone);
         CacheHelper.saveData(key: "isLogged", value: true);
         DioUtils.setDioAgain();
         _isLoading.value = false;
         Get.to(HomePageView());
       }else{
         _isLoading.value = false;
         Get.snackbar("Register Failed", registerModel!.message.toString());
       }
       // update();
     }
         catch(e){
       print(e);
       _isLoading.value = false;
       Get.snackbar("Register Failed", "Something Went Wrong!");

         }
   }
}