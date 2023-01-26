/// status : true
/// msg : "riuhfer"
/// data : {"id":112,"countryId":null,"cityId":null,"stateID":null,"name":"marwa","email":"marwamostafa@gmail.com","dateOfBirth":null,"mobile":null,"address":null,"photo":"http://findfamily.net/care/img/profiles/profile.png","gender":null,"detail":null,"status":"1","blocked":"1","type":"buyer","token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9iZWF1dGloZWF0aC5jb21cL3N1YlwvZXNob3BcL2FwaVwvYnV5ZXJzXC9sb2dpbiIsImlhdCI6MTY3MzUyMjMxNCwiZXhwIjoxNjczNTI1OTE0LCJuYmYiOjE2NzM1MjIzMTQsImp0aSI6IjltTFc4Y3BNcUZldHcwYmoiLCJzdWIiOjExMiwicHJ2IjoiYTA5NDAyMzM1NGE0ZDkyMmE2YmM3MTBjZGZiZTFhNzRmYmEzMDRlNiJ9.eIy8ISkR9yOLr68qbkHsrs8vVJNQPHQYtvYBJp6F8lw","device_token":"fwfwfrw","is_activated":"1","created_at":"2023-01-12T11:18:21.000000Z","updated_at":"2023-01-12T11:18:34.000000Z","country":null,"city":null}

class ProfileModel {
  ProfileModel({
      bool? status, 
      String? msg, 
      Data? data,}){
    _status = status;
    _msg = msg;
    _data = data;
}

  ProfileModel.fromJson(dynamic json) {
    _status = json['status'];
    _msg = json['msg'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _msg;
  Data? _data;

  bool? get status => _status;
  String? get msg => _msg;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 112
/// countryId : null
/// cityId : null
/// stateID : null
/// name : "marwa"
/// email : "marwamostafa@gmail.com"
/// dateOfBirth : null
/// mobile : null
/// address : null
/// photo : "http://findfamily.net/care/img/profiles/profile.png"
/// gender : null
/// detail : null
/// status : "1"
/// blocked : "1"
/// type : "buyer"
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9iZWF1dGloZWF0aC5jb21cL3N1YlwvZXNob3BcL2FwaVwvYnV5ZXJzXC9sb2dpbiIsImlhdCI6MTY3MzUyMjMxNCwiZXhwIjoxNjczNTI1OTE0LCJuYmYiOjE2NzM1MjIzMTQsImp0aSI6IjltTFc4Y3BNcUZldHcwYmoiLCJzdWIiOjExMiwicHJ2IjoiYTA5NDAyMzM1NGE0ZDkyMmE2YmM3MTBjZGZiZTFhNzRmYmEzMDRlNiJ9.eIy8ISkR9yOLr68qbkHsrs8vVJNQPHQYtvYBJp6F8lw"
/// device_token : "fwfwfrw"
/// is_activated : "1"
/// created_at : "2023-01-12T11:18:21.000000Z"
/// updated_at : "2023-01-12T11:18:34.000000Z"
/// country : null
/// city : null

class Data {
  Data({
      int? id, 
      dynamic countryId, 
      dynamic cityId, 
      dynamic stateID, 
      String? name, 
      String? email, 
      dynamic dateOfBirth, 
      dynamic mobile, 
      dynamic address, 
      String? photo, 
      dynamic gender, 
      dynamic detail, 
      String? status, 
      String? blocked, 
      String? type, 
      String? token, 
      String? deviceToken, 
      String? isActivated, 
      String? createdAt, 
      String? updatedAt, 
      dynamic country, 
      dynamic city,}){
    _id = id;
    _countryId = countryId;
    _cityId = cityId;
    _stateID = stateID;
    _name = name;
    _email = email;
    _dateOfBirth = dateOfBirth;
    _mobile = mobile;
    _address = address;
    _photo = photo;
    _gender = gender;
    _detail = detail;
    _status = status;
    _blocked = blocked;
    _type = type;
    _token = token;
    _deviceToken = deviceToken;
    _isActivated = isActivated;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _country = country;
    _city = city;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _countryId = json['countryId'];
    _cityId = json['cityId'];
    _stateID = json['stateID'];
    _name = json['name'];
    _email = json['email'];
    _dateOfBirth = json['dateOfBirth'];
    _mobile = json['mobile'];
    _address = json['address'];
    _photo = json['photo'];
    _gender = json['gender'];
    _detail = json['detail'];
    _status = json['status'];
    _blocked = json['blocked'];
    _type = json['type'];
    _token = json['token'];
    _deviceToken = json['device_token'];
    _isActivated = json['is_activated'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _country = json['country'];
    _city = json['city'];
  }
  int? _id;
  dynamic _countryId;
  dynamic _cityId;
  dynamic _stateID;
  String? _name;
  String? _email;
  dynamic _dateOfBirth;
  dynamic _mobile;
  dynamic _address;
  String? _photo;
  dynamic _gender;
  dynamic _detail;
  String? _status;
  String? _blocked;
  String? _type;
  String? _token;
  String? _deviceToken;
  String? _isActivated;
  String? _createdAt;
  String? _updatedAt;
  dynamic _country;
  dynamic _city;

  int? get id => _id;
  dynamic get countryId => _countryId;
  dynamic get cityId => _cityId;
  dynamic get stateID => _stateID;
  String? get name => _name;
  String? get email => _email;
  dynamic get dateOfBirth => _dateOfBirth;
  dynamic get mobile => _mobile;
  dynamic get address => _address;
  String? get photo => _photo;
  dynamic get gender => _gender;
  dynamic get detail => _detail;
  String? get status => _status;
  String? get blocked => _blocked;
  String? get type => _type;
  String? get token => _token;
  String? get deviceToken => _deviceToken;
  String? get isActivated => _isActivated;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get country => _country;
  dynamic get city => _city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['countryId'] = _countryId;
    map['cityId'] = _cityId;
    map['stateID'] = _stateID;
    map['name'] = _name;
    map['email'] = _email;
    map['dateOfBirth'] = _dateOfBirth;
    map['mobile'] = _mobile;
    map['address'] = _address;
    map['photo'] = _photo;
    map['gender'] = _gender;
    map['detail'] = _detail;
    map['status'] = _status;
    map['blocked'] = _blocked;
    map['type'] = _type;
    map['token'] = _token;
    map['device_token'] = _deviceToken;
    map['is_activated'] = _isActivated;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['country'] = _country;
    map['city'] = _city;
    return map;
  }

}