import 'package:dio/dio.dart';
import 'package:start_tech_task/models/UpdateInfoModel.dart';

import '../utils/dio_utils/dio_utils.dart';

class UpdateInfoRepo{
  final dio = DioUtils.dio;

  updateInfo( String email , String phone, String name,String countryCode) async {
    try{
      FormData data = FormData.fromMap({
        "email" : email,
        "name" : name,
        "phone" : phone,
        "country_code" : countryCode,
      });
      print("aaaaaaaaa");
      final response = await dio!.post("user/update",data: data,);
      return UpdateInfoModel.fromJson(response.data);
    }
    catch(e){
      print(e);
      print("Eroooooorrrrrrrrr");

    }

  }

}
