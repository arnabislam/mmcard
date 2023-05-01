import 'dart:convert';

/// user : {"id":1,"name":"sagor","reffered_code":"13464163","email":"afd1mfi@gmail.com","email_verified_at":null,"phone":"01941949271120","fsubmit_status":1,"payment_status":"accepted","balance":"0.0","referral_code":"9bAMJF","created_at":"2023-03-30T11:25:11.000000Z","updated_at":"2023-03-30T11:55:49.000000Z"}
/// token : "9|WZU5s7z985oTPv7Qwi3qW5rRaOb86hufedXVfSWc"

AuthUserModel authUserModelFromJson(String str) =>
    AuthUserModel.fromJson(json.decode(str));
String authUserModelToJson(AuthUserModel data) => json.encode(data.toJson());

class AuthUserModel {
  AuthUserModel({
    User? user,
    String? token,
  }) {
    _user = user;
    _token = token;
  }

  AuthUserModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
  AuthUserModel copyWith({
    User? user,
    String? token,
  }) =>
      AuthUserModel(
        user: user ?? _user,
        token: token ?? _token,
      );
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }
}

/// id : 1
/// name : "sagor"
/// reffered_code : "13464163"
/// email : "afd1mfi@gmail.com"
/// email_verified_at : null
/// phone : "01941949271120"
/// fsubmit_status : 1
/// payment_status : "accepted"
/// balance : "0.0"
/// referral_code : "9bAMJF"
/// created_at : "2023-03-30T11:25:11.000000Z"
/// updated_at : "2023-03-30T11:55:49.000000Z"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    num? id,
    String? name,
    String? refferedCode,
    String? email,
    dynamic emailVerifiedAt,
    String? phone,
    num? fsubmitStatus,
    String? paymentStatus,
    String? balance,
    String? referralCode,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _refferedCode = refferedCode;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _phone = phone;
    _fsubmitStatus = fsubmitStatus;
    _paymentStatus = paymentStatus;
    _balance = balance;
    _referralCode = referralCode;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _refferedCode = json['reffered_code'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _phone = json['phone'];
    _fsubmitStatus = json['fsubmit_status'];
    _paymentStatus = json['payment_status'];
    _balance = json['balance'];
    _referralCode = json['referral_code'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _refferedCode;
  String? _email;
  dynamic _emailVerifiedAt;
  String? _phone;
  num? _fsubmitStatus;
  String? _paymentStatus;
  String? _balance;
  String? _referralCode;
  String? _createdAt;
  String? _updatedAt;
  User copyWith({
    num? id,
    String? name,
    String? refferedCode,
    String? email,
    dynamic emailVerifiedAt,
    String? phone,
    num? fsubmitStatus,
    String? paymentStatus,
    String? balance,
    String? referralCode,
    String? createdAt,
    String? updatedAt,
  }) =>
      User(
        id: id ?? _id,
        name: name ?? _name,
        refferedCode: refferedCode ?? _refferedCode,
        email: email ?? _email,
        emailVerifiedAt: emailVerifiedAt ?? _emailVerifiedAt,
        phone: phone ?? _phone,
        fsubmitStatus: fsubmitStatus ?? _fsubmitStatus,
        paymentStatus: paymentStatus ?? _paymentStatus,
        balance: balance ?? _balance,
        referralCode: referralCode ?? _referralCode,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get name => _name;
  String? get refferedCode => _refferedCode;
  String? get email => _email;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get phone => _phone;
  num? get fsubmitStatus => _fsubmitStatus;
  String? get paymentStatus => _paymentStatus;
  String? get balance => _balance;
  String? get referralCode => _referralCode;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['reffered_code'] = _refferedCode;
    map['email'] = _email;
    map['email_verified_at'] = _emailVerifiedAt;
    map['phone'] = _phone;
    map['fsubmit_status'] = _fsubmitStatus;
    map['payment_status'] = _paymentStatus;
    map['balance'] = _balance;
    map['referral_code'] = _referralCode;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
