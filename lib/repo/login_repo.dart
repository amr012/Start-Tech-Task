import 'package:dio/dio.dart';
import 'package:start_tech_task/models/LoginModel.dart';

import '../utils/dio_utils/dio_utils.dart';

class LoginRepo{
  final dio = DioUtils.dio;

  login( String email , String password,) async {
    try{
      FormData data = FormData.fromMap({
        "email" : email,
        "password" : password,
      });
      print("aaaaaaaaa");
      final response = await dio!.post("login",data: data,);
      return LoginModel.fromJson(response.data);
    }
    catch(e){
      print(e);
      print("Eroooooorrrrrrrrr");

    }

  }

}
