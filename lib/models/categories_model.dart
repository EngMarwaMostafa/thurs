/// status : true
/// msg : "riuhfer"
/// data : [{"id":3,"name":{"ar":"الازياء","en":"fashion","sw":"mode"},"icon":"http://beautiheath.com/sub/eshop/img/category/1656653538.jpeg","image":null,"slug":null,"status":"1","top":"1","created_at":"2022-03-25T06:38:19.000000Z","updated_at":"2022-07-01T05:32:18.000000Z","title":"الازياء","imge":"http://beautiheath.com/sub/eshop/img/category/"}]

class CategoriesModel {
  CategoriesModel({
      bool? status, 
      String? msg, 
      List<Data>? data,}){
    _status = status;
    _msg = msg;
    _data = data;
}

  CategoriesModel.fromJson(dynamic json) {
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

/// id : 3
/// name : {"ar":"الازياء","en":"fashion","sw":"mode"}
/// icon : "http://beautiheath.com/sub/eshop/img/category/1656653538.jpeg"
/// image : null
/// slug : null
/// status : "1"
/// top : "1"
/// created_at : "2022-03-25T06:38:19.000000Z"
/// updated_at : "2022-07-01T05:32:18.000000Z"
/// title : "الازياء"
/// imge : "http://beautiheath.com/sub/eshop/img/category/"

class Data {
  Data({
      int? id, 
      Name? name, 
      String? icon, 
      dynamic image, 
      dynamic slug, 
      String? status, 
      String? top, 
      String? createdAt, 
      String? updatedAt, 
      String? title, 
      String? imge,}){
    _id = id;
    _name = name;
    _icon = icon;
    _image = image;
    _slug = slug;
    _status = status;
    _top = top;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _title = title;
    _imge = imge;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _icon = json['icon'];
    _image = json['image'];
    _slug = json['slug'];
    _status = json['status'];
    _top = json['top'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _title = json['title'];
    _imge = json['imge'];
  }
  int? _id;
  Name? _name;
  String? _icon;
  dynamic _image;
  dynamic _slug;
  String? _status;
  String? _top;
  String? _createdAt;
  String? _updatedAt;
  String? _title;
  String? _imge;

  int? get id => _id;
  Name? get name => _name;
  String? get icon => _icon;
  dynamic get image => _image;
  dynamic get slug => _slug;
  String? get status => _status;
  String? get top => _top;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get title => _title;
  String? get imge => _imge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['icon'] = _icon;
    map['image'] = _image;
    map['slug'] = _slug;
    map['status'] = _status;
    map['top'] = _top;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['title'] = _title;
    map['imge'] = _imge;
    return map;
  }

}

/// ar : "الازياء"
/// en : "fashion"
/// sw : "mode"

class Name {
  Name({
      String? ar, 
      String? en, 
      String? sw,}){
    _ar = ar;
    _en = en;
    _sw = sw;
}

  Name.fromJson(dynamic json) {
    _ar = json['ar'];
    _en = json['en'];
    _sw = json['sw'];
  }
  String? _ar;
  String? _en;
  String? _sw;

  String? get ar => _ar;
  String? get en => _en;
  String? get sw => _sw;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ar'] = _ar;
    map['en'] = _en;
    map['sw'] = _sw;
    return map;
  }

}