import 'package:get/get.dart';
import 'package:start_tech_task/models/LoginModel.dart';
import 'package:start_tech_task/repo/login_repo.dart';
import 'package:start_tech_task/utils/shared_preferences/cashe_helper.dart';

import 'package:start_tech_task/view/home_page/home_page_view.dart';

import '../utils/dio_utils/dio_utils.dart';

class LoginController extends GetxController{



  LoginModel? loginModel;
  LoginRepo loginRepo = LoginRepo();
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;


  login( String email , String password,)async{
    try{
      _isLoading.value = true;
      loginModel = await loginRepo.login(email, password);
      print(loginModel!.message);
      if(loginModel!.success == true ){
        CacheHelper.saveData(key: "token", value: loginModel!.data!.token);
        CacheHelper.saveData(key: "email", value: loginModel!.data!.email);
        CacheHelper.saveData(key: "name", value: loginModel!.data!.name);
        CacheHelper.saveData(key: "phone", value: loginModel!.data!.phone);
        CacheHelper.saveData(key: "isLogged", value: true);
        DioUtils.setDioAgain();
        _isLoading.value = false;
        Get.to(HomePageView());
      }else{
        _isLoading.value = false;
        Get.snackbar("Register Failed", loginModel!.message.toString());
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