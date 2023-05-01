import 'dart:convert';

/// forms : {"id":32,"pay_method":"dfasdf","sender_number":"dfasdfa","txn_id":"sdfsf","amonut":"sdfasdf","status":"Pending","user_id":2,"created_at":"2023-04-02T18:14:57.000000Z","updated_at":"2023-04-02T18:14:57.000000Z"}

FormsModel formsModelFromJson(String str) =>
    FormsModel.fromJson(json.decode(str));
String formsModelToJson(FormsModel data) => json.encode(data.toJson());

class FormsModel {
  FormsModel({
    Forms? forms,
  }) {
    _forms = forms;
  }

  FormsModel.fromJson(dynamic json) {
    _forms = json['forms'] != null ? Forms.fromJson(json['forms']) : null;
  }
  Forms? _forms;
  FormsModel copyWith({
    Forms? forms,
  }) =>
      FormsModel(
        forms: forms ?? _forms,
      );
  Forms? get forms => _forms;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_forms != null) {
      map['forms'] = _forms?.toJson();
    }
    return map;
  }
}

/// id : 32
/// pay_method : "dfasdf"
/// sender_number : "dfasdfa"
/// txn_id : "sdfsf"
/// amonut : "sdfasdf"
/// status : "Pending"
/// user_id : 2
/// created_at : "2023-04-02T18:14:57.000000Z"
/// updated_at : "2023-04-02T18:14:57.000000Z"

Forms formsFromJson(String str) => Forms.fromJson(json.decode(str));
String formsToJson(Forms data) => json.encode(data.toJson());

class Forms {
  Forms({
    num? id,
    String? payMethod,
    String? senderNumber,
    String? txnId,
    String? amonut,
    String? status,
    num? userId,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _payMethod = payMethod;
    _senderNumber = senderNumber;
    _txnId = txnId;
    _amonut = amonut;
    _status = status;
    _userId = userId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Forms.fromJson(dynamic json) {
    _id = json['id'];
    _payMethod = json['pay_method'];
    _senderNumber = json['sender_number'];
    _txnId = json['txn_id'];
    _amonut = json['amonut'];
    _status = json['status'];
    _userId = json['user_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _payMethod;
  String? _senderNumber;
  String? _txnId;
  String? _amonut;
  String? _status;
  num? _userId;
  String? _createdAt;
  String? _updatedAt;
  Forms copyWith({
    num? id,
    String? payMethod,
    String? senderNumber,
    String? txnId,
    String? amonut,
    String? status,
    num? userId,
    String? createdAt,
    String? updatedAt,
  }) =>
      Forms(
        id: id ?? _id,
        payMethod: payMethod ?? _payMethod,
        senderNumber: senderNumber ?? _senderNumber,
        txnId: txnId ?? _txnId,
        amonut: amonut ?? _amonut,
        status: status ?? _status,
        userId: userId ?? _userId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get payMethod => _payMethod;
  String? get senderNumber => _senderNumber;
  String? get txnId => _txnId;
  String? get amonut => _amonut;
  String? get status => _status;
  num? get userId => _userId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pay_method'] = _payMethod;
    map['sender_number'] = _senderNumber;
    map['txn_id'] = _txnId;
    map['amonut'] = _amonut;
    map['status'] = _status;
    map['user_id'] = _userId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
