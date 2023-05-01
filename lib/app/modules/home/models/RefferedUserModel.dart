import 'dart:convert';

/// users : [{"id":4,"name":"sagor","reffered_code":"8UgBHy","email":"sk111@gmail.com","email_verified_at":null,"phone":"01941949","fsubmit_status":0,"payment_status":"pending","balance":"0.0","referral_code":"fscUFs","created_at":"2023-03-30T11:30:42.000000Z","updated_at":"2023-03-30T11:30:42.000000Z"},{"id":5,"name":"Sagor","reffered_code":"8UgBHy","email":"sagor@gmail.com","email_verified_at":null,"phone":"01941949255","fsubmit_status":0,"payment_status":"pending","balance":"0.0","referral_code":"eDwgwn","created_at":"2023-04-02T05:19:50.000000Z","updated_at":"2023-04-02T05:19:50.000000Z"}]

RefferedUserModel refferedUserModelFromJson(String str) =>
    RefferedUserModel.fromJson(json.decode(str));
String refferedUserModelToJson(RefferedUserModel data) =>
    json.encode(data.toJson());

class RefferedUserModel {
  RefferedUserModel({
    List<Users>? users,
  }) {
    _users = users;
  }

  RefferedUserModel.fromJson(dynamic json) {
    if (json['users'] != null) {
      _users = [];
      json['users'].forEach((v) {
        _users?.add(Users.fromJson(v));
      });
    }
  }
  List<Users>? _users;
  RefferedUserModel copyWith({
    List<Users>? users,
  }) =>
      RefferedUserModel(
        users: users ?? _users,
      );
  List<Users>? get users => _users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_users != null) {
      map['users'] = _users?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 4
/// name : "sagor"
/// reffered_code : "8UgBHy"
/// email : "sk111@gmail.com"
/// email_verified_at : null
/// phone : "01941949"
/// fsubmit_status : 0
/// payment_status : "pending"
/// balance : "0.0"
/// referral_code : "fscUFs"
/// created_at : "2023-03-30T11:30:42.000000Z"
/// updated_at : "2023-03-30T11:30:42.000000Z"

Users usersFromJson(String str) => Users.fromJson(json.decode(str));
String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  Users({
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

  Users.fromJson(dynamic json) {
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
  Users copyWith({
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
      Users(
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
