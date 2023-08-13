import 'package:dio/dio.dart';
import 'package:start_tech_task/models/RegisterModel.dart';

import '../utils/dio_utils/dio_utils.dart';

class RegisterRepo{
  final dio = DioUtils.dio;

  register(String name, String email , String password, String phoneNumber, String countryCode,) async {
    try{
      FormData data = FormData.fromMap({
        "name" : name,
        "email" : email,
        "phone" : phoneNumber,
        "password" : password,
        "country_code" : countryCode,
        "password_confirm" : password
      });
      print("aaaaaaaaa");
      final response = await dio!.post("user/register",data: data,);
      return RegisterModel.fromJson(response.data);
    }
    catch(e){
      print(e);
      print("Eroooooorrrrrrrrr");

    }

  }

}
