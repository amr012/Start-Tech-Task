import 'package:get/get.dart';
import 'package:start_tech_task/models/UpdateInfoModel.dart';
import 'package:start_tech_task/repo/update_info_repo.dart';
import 'package:start_tech_task/view/home_page/home_page_view.dart';

import '../utils/shared_preferences/cashe_helper.dart';

class UpdateInfoController extends GetxController{


  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  UpdateInfoModel? updateInfoModel;
  UpdateInfoRepo updateInfoRepo = UpdateInfoRepo();

  updateInfo(String email , String phone, String name,String countryCode)async{
    try{
      _isLoading.value = true;
      updateInfoModel = await updateInfoRepo.updateInfo(email, phone, name, countryCode);
      print(updateInfoModel!.message);

      if(updateInfoModel!.success == true ){
        CacheHelper.saveData(key: "email", value: updateInfoModel!.data!.email);
        CacheHelper.saveData(key: "name", value: updateInfoModel!.data!.name);
        CacheHelper.saveData(key: "phone", value: updateInfoModel!.data!.phone);
        Get.snackbar("Update Information", updateInfoModel!.message.toString());

        Get.offAll(HomePageView());
      }else{
        Get.snackbar("Register Failed", updateInfoModel!.message.toString());
      }
      _isLoading.value = false;
      // update();
    }
    catch(e){
      print(e);
      _isLoading.value = false;
      Get.snackbar("Register Failed", "Something Went Wrong!");

    }
  }
}