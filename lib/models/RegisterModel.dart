/// success : true
/// message : "User created successfully"
/// data : {"id":"503","name":"ali1","country_code":"+9631","phone":"1234",
/// "email":"ahmad41@gmail.com","token":"oS4T++T=+DQLJr+jI4VYUZ8K7fdC!ZrI+VxdUCW+l0!_ReT3XNKbFZW7$sc$h#MEU3$V*yQ1I6fDkAnVkbDe^n*$m^w9TdPffvVemHc_i+=hFpN$tPNba3z43q5R%cmcKU5Y53AnMPcjCk8WmiEkR^iDvMQtv00OwONu+s&8^n5eQP^nDi&tpekJKNlRlBkl6_hf$OYPkfw0ljk+9r1_Xr2w%&izZ9ik8x5BE9oAJd844Z*UUsuFL&a+08!jCZAz01ni42Ok!zQ9%xm%hIHVEY@ed$WInC^hla3tIEok_V7WMt&k_bKc8CQV=ZkLl3Zv1Sekby5gYkw!CET*Zo@ATqKdLdYjnw9#8nN7ZSt6YMXSbAeoX7aQZXxQqNzb$RHNx8ONizxAEDv@Y_KRYpMNeDi&tdW7CAc$ArhhTge8QFxh6^CBT8ob%Y@BID4M587CwbnE9BxImjut3pVCLQ$Gx3=OQ%SM22@SEGj#Ol^SxUPKUKN&jjlwMo*XD7t_IXuLjRv4JXwS9u0kY6XeVlM+*nQDhdLp!B8N7dFQG3rr^&kj@90p%&6dCXnL=K9J_HJI63=fkYazrqi%d8@+yZTBK+THsfRn6FWV#5DcMPGe@QAv2#GeIszRJD%gSU*f7KTCCHFcJTt6+b!VOh4cj$jk+StUR1b1=1bMqR^sCK%%iQ^i=RlPc^tX9J18dAKveIaLjQt3a1AGKVoqwpR+&y_YK2n$b7Vr+m&%NgH3X86Zb0oZcWC28cDb8$GTW*C2LOwLcjq0%PU%mpklKD0$NakqIe9=$mTq%ku*$cS2NMd3PztfgbHYHQXbUWy&kSG*Yg%Qz$SC2e^l%l5HbxBEsgaTIO%zZ3dD48wTWElAZw0%3NmA_MmvFfxKK$jV1TgwYh^Zwm2+n0sIqDr!tIy$dW+fslvDlq++n*1V3oj+_NqssXG*WuXcYn5zNUK4BfwdX6B@H91@sb9kHE_ymvohW3raiadH5=v+*CDSkYSTpgbJ","token_expiry":"2023-10-12 12:10:26"}

class RegisterModel {
  RegisterModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  RegisterModel.fromJson(dynamic json) {
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
    map['message'] = _message as String;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "503"
/// name : "ali1"
/// country_code : "+9631"
/// phone : "1234"
/// email : "ahmad41@gmail.com"
/// token : "oS4T++T=+DQLJr+jI4VYUZ8K7fdC!ZrI+VxdUCW+l0!_ReT3XNKbFZW7$sc$h#MEU3$V*yQ1I6fDkAnVkbDe^n*$m^w9TdPffvVemHc_i+=hFpN$tPNba3z43q5R%cmcKU5Y53AnMPcjCk8WmiEkR^iDvMQtv00OwONu+s&8^n5eQP^nDi&tpekJKNlRlBkl6_hf$OYPkfw0ljk+9r1_Xr2w%&izZ9ik8x5BE9oAJd844Z*UUsuFL&a+08!jCZAz01ni42Ok!zQ9%xm%hIHVEY@ed$WInC^hla3tIEok_V7WMt&k_bKc8CQV=ZkLl3Zv1Sekby5gYkw!CET*Zo@ATqKdLdYjnw9#8nN7ZSt6YMXSbAeoX7aQZXxQqNzb$RHNx8ONizxAEDv@Y_KRYpMNeDi&tdW7CAc$ArhhTge8QFxh6^CBT8ob%Y@BID4M587CwbnE9BxImjut3pVCLQ$Gx3=OQ%SM22@SEGj#Ol^SxUPKUKN&jjlwMo*XD7t_IXuLjRv4JXwS9u0kY6XeVlM+*nQDhdLp!B8N7dFQG3rr^&kj@90p%&6dCXnL=K9J_HJI63=fkYazrqi%d8@+yZTBK+THsfRn6FWV#5DcMPGe@QAv2#GeIszRJD%gSU*f7KTCCHFcJTt6+b!VOh4cj$jk+StUR1b1=1bMqR^sCK%%iQ^i=RlPc^tX9J18dAKveIaLjQt3a1AGKVoqwpR+&y_YK2n$b7Vr+m&%NgH3X86Zb0oZcWC28cDb8$GTW*C2LOwLcjq0%PU%mpklKD0$NakqIe9=$mTq%ku*$cS2NMd3PztfgbHYHQXbUWy&kSG*Yg%Qz$SC2e^l%l5HbxBEsgaTIO%zZ3dD48wTWElAZw0%3NmA_MmvFfxKK$jV1TgwYh^Zwm2+n0sIqDr!tIy$dW+fslvDlq++n*1V3oj+_NqssXG*WuXcYn5zNUK4BfwdX6B@H91@sb9kHE_ymvohW3raiadH5=v+*CDSkYSTpgbJ"
/// token_expiry : "2023-10-12 12:10:26"

class Data {
  Data({
      dynamic id,
      String? name,
    dynamic countryCode,
    dynamic phone,
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
    _id = json['id'] as String;
    _name = json['name'] as String;
    _countryCode = json['country_code'] as String;
    _phone = json['phone'] as String;
    _email = json['email'] as String;
    _token = json['token'] as String;
    _tokenExpiry = json['token_expiry'] as String;
  }
  dynamic _id;
  String? _name;
  dynamic _countryCode;
  dynamic _phone;
  String? _email;
  String? _token;
  String? _tokenExpiry;

  dynamic get id => _id;
  String? get name => _name;
  dynamic get countryCode => _countryCode;
  dynamic get phone => _phone;
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