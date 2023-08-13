/// success : true
/// message : "Proccess completed successfully"
/// data : {"id":"512","name":"ali1","country_code":"+9631","phone":"sasdsadsa","email":"amr1@gmail.com","token":"0EVqna3GDo$G1dsgz!EHzM&5sWsvcHu21g6!v=yYWu2YHbTirj&dgQ@dSztQgYW#7gO8b6tE7aw03X2N3q67LBPCK9q7F_8wE*ID7GOnb1LM*7y$9#r*VGNXs&6FBozn8eL2XbqYY9XtlgnD0jni^2q+a48PM%+PZqqtaKQVXTJCVe!SGLAF$Bnf0k=plSN6Sov#tWX=gbWtudk6HDVPVEfZqdN0mw7S8Y2q7rEr1cHyE$W4^ktpii8p#hbWD7^$q1Vfti4HKYoYEW2RA*SXO@o%HzA1xATp*zZdT^uSu11Au4+KjPgpGe3qS1EaQG%^7Q=!48U1xqgY16vPuK6bNqr!X+h@_yn7+CgE28n+m+9mL2#OkmLD&qg&GdbiMGget@Fh+UTvisXEmbGK0N9Dd2Tn_wVgxPC0Dh!a@4=@ONt=8%q8LLKHziM&_gLH&kWm3hdwEfUkr4HBoh%6ybMa0wFC^7j&CLhGXXu1oy^ienLYCj&Gg%SprSRM2A+o%pe%2^8spHacAtzFtH*!p0xMo#q$*2qCX6yzRJ^=Mnbae0NQn_Bm!@^C1_JcPuZ5yHuz19z1#JfJiSYRAmdr!4bNfi41Wg@Y@t16&T=_zfGKJZv*QWhbkPZ$A7^d@uq=NFsH4X_XYh@3yO#ojhR1*i98Re#o1w$Foq*Czqfdc4u46M_xu@pEYi5jIK$Glvrw@hWUWUx222#Pw*oPFJ1adl*YBUxtbw!1PxE^&NX*JRAKo$UoGfCzMXHHpxdERHSAECMK=6Gjkvd+FY0lO2b1vJ+zE$oVK!QMdRD%vwHF66Jlex*8FcLYnB72qVN*ZFGx_IOXDHIYnAkrFvO!W@NJBNgR1^gDoY_QE3Qnvgk!0P%8WOP@7h+aeXw^xulr14^w_IM9D^SAv!pki3ZnC_3q2B9i19XWby8N8xJliafw3ZnKzudc%HIb^KJx+N3b12b3@amUYyj8d8jDMwk3UfIcoxH8JTjU89GD0etk9F3wPirM","token_expiry":"2023-10-12"}

class LoginModel {
  LoginModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "512"
/// name : "ali1"
/// country_code : "+9631"
/// phone : "sasdsadsa"
/// email : "amr1@gmail.com"
/// token : "0EVqna3GDo$G1dsgz!EHzM&5sWsvcHu21g6!v=yYWu2YHbTirj&dgQ@dSztQgYW#7gO8b6tE7aw03X2N3q67LBPCK9q7F_8wE*ID7GOnb1LM*7y$9#r*VGNXs&6FBozn8eL2XbqYY9XtlgnD0jni^2q+a48PM%+PZqqtaKQVXTJCVe!SGLAF$Bnf0k=plSN6Sov#tWX=gbWtudk6HDVPVEfZqdN0mw7S8Y2q7rEr1cHyE$W4^ktpii8p#hbWD7^$q1Vfti4HKYoYEW2RA*SXO@o%HzA1xATp*zZdT^uSu11Au4+KjPgpGe3qS1EaQG%^7Q=!48U1xqgY16vPuK6bNqr!X+h@_yn7+CgE28n+m+9mL2#OkmLD&qg&GdbiMGget@Fh+UTvisXEmbGK0N9Dd2Tn_wVgxPC0Dh!a@4=@ONt=8%q8LLKHziM&_gLH&kWm3hdwEfUkr4HBoh%6ybMa0wFC^7j&CLhGXXu1oy^ienLYCj&Gg%SprSRM2A+o%pe%2^8spHacAtzFtH*!p0xMo#q$*2qCX6yzRJ^=Mnbae0NQn_Bm!@^C1_JcPuZ5yHuz19z1#JfJiSYRAmdr!4bNfi41Wg@Y@t16&T=_zfGKJZv*QWhbkPZ$A7^d@uq=NFsH4X_XYh@3yO#ojhR1*i98Re#o1w$Foq*Czqfdc4u46M_xu@pEYi5jIK$Glvrw@hWUWUx222#Pw*oPFJ1adl*YBUxtbw!1PxE^&NX*JRAKo$UoGfCzMXHHpxdERHSAECMK=6Gjkvd+FY0lO2b1vJ+zE$oVK!QMdRD%vwHF66Jlex*8FcLYnB72qVN*ZFGx_IOXDHIYnAkrFvO!W@NJBNgR1^gDoY_QE3Qnvgk!0P%8WOP@7h+aeXw^xulr14^w_IM9D^SAv!pki3ZnC_3q2B9i19XWby8N8xJliafw3ZnKzudc%HIb^KJx+N3b12b3@amUYyj8d8jDMwk3UfIcoxH8JTjU89GD0etk9F3wPirM"
/// token_expiry : "2023-10-12"

class Data {
  Data({
      String? id, 
      String? name, 
      String? countryCode, 
      String? phone, 
      String? email, 
      String? token, 
      String? tokenExpiry,}){
    _id = id;
    _name = name;
    _countryCode = countryCode;
    _phone = phone;
    _email = email;
    _token = token;
    _tokenExpiry = tokenExpiry;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _countryCode = json['country_code'];
    _phone = json['phone'];
    _email = json['email'];
    _token = json['token'];
    _tokenExpiry = json['token_expiry'];
  }
  String? _id;
  String? _name;
  String? _countryCode;
  String? _phone;
  String? _email;
  String? _token;
  String? _tokenExpiry;

  String? get id => _id;
  String? get name => _name;
  String? get countryCode => _countryCode;
  String? get phone => _phone;
  String? get email => _email;
  String? get token => _token;
  String? get tokenExpiry => _tokenExpiry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['country_code'] = _countryCode;
    map['phone'] = _phone;
    map['email'] = _email;
    map['token'] = _token;
    map['token_expiry'] = _tokenExpiry;
    return map;
  }

}