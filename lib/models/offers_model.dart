/// status : true
/// msg : "iw7ryhfr"
/// data : [{"id":1,"name":"اسم البراند","vendorId":"1","is_active":"0","description":null,"logo":"http://beautiheath.com/sub/eshop/img/shops/1656663808.png","created_at":"2022-02-28T01:22:51.000000Z","updated_at":"2022-07-01T08:24:21.000000Z"}]

class OffersModel {
  OffersModel({
    bool? status,
    String? msg,
    List<Data>? data,}){
    _status = status;
    _msg = msg;
    _data = data;
  }

  OffersModel.fromJson(dynamic json) {
    _status = json['status'];
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _msg;
  List<Data>? _data;

  bool? get status => _status;
  String? get msg => _msg;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "اسم البراند"
/// vendorId : "1"
/// is_active : "0"
/// description : null
/// logo : "http://beautiheath.com/sub/eshop/img/shops/1656663808.png"
/// created_at : "2022-02-28T01:22:51.000000Z"
/// updated_at : "2022-07-01T08:24:21.000000Z"

class Data {
  Data({
    int? id,
    String? name,
    String? vendorId,
    String? isActive,
    dynamic description,
    String? logo,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _name = name;
    _vendorId = vendorId;
    _isActive = isActive;
    _description = description;
    _logo = logo;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _vendorId = json['vendorId'];
    _isActive = json['is_active'];
    _description = json['description'];
    _logo = json['logo'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _name;
  String? _vendorId;
  String? _isActive;
  dynamic _description;
  String? _logo;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  String? get name => _name;
  String? get vendorId => _vendorId;
  String? get isActive => _isActive;
  dynamic get description => _description;
  String? get logo => _logo;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['vendorId'] = _vendorId;
    map['is_active'] = _isActive;
    map['description'] = _description;
    map['logo'] = _logo;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}