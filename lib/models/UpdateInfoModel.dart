/// success : true
/// message : "User updated successfully"
/// data : {"id":"512","name":"aa12","country_code":"+9631","phone":"9686868681412","email":"amr1@gmail.com"}

class UpdateInfoModel {
  UpdateInfoModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  UpdateInfoModel.fromJson(dynamic json) {
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
/// name : "aa12"
/// country_code : "+9631"
/// phone : "9686868681412"
/// email : "amr1@gmail.com"

class Data {
  Data({
      String? id, 
      String? name, 
      String? countryCode, 
      String? phone, 
      String? email,}){
    _id = id;
    _name = name;
    _countryCode = countryCode;
    _phone = phone;
    _email = email;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _countryCode = json['country_code'];
    _phone = json['phone'];
    _email = json['email'];
  }
  String? _id;
  String? _name;
  String? _countryCode;
  String? _phone;
  String? _email;

  String? get id => _id;
  String? get name => _name;
  String? get countryCode => _countryCode;
  String? get phone => _phone;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['country_code'] = _countryCode;
    map['phone'] = _phone;
    map['email'] = _email;
    return map;
  }

}