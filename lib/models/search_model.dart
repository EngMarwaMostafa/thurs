/// status : true
/// msg : "iw7ryhfr"
/// data : [{"id":7,"categoryId":"3","vendorId":"1","shopId":"1","names":{"ar":"قميص قطن بجيب امامي وطبعة شكل مرساة للاولاد من اندورا","en":"Baby girls' clothes, pictures, baby girls'","sw":"Andora Cotton Anchor Print Front Pocket Shirt för pojkar"},"descriptions":{"ar":"جوميا ملابس بنات اطفال 2023 ازياء بنات صغيرة جديده ومتنوعه، تبحث كل أم عن أزياء راقية ومميزة لطفلتها وخاصة إذا كانت مولودتها الأولى فهى ترغب أن تظهر بإطلالة أنيقة تليق بها وجدير بالذكر أن مع موضة هذا العام 2023 لملابس الأطفال وجدنا الكثير من ملابس البنات الجميلة التى تليق بطفلتك وتمنحها مظهر جذاب وعصرى","en":"Jumia Baby Girls Clothes 2023 New and varied little girls’ fashion, every mother is looking for classy and distinctive fashion for her child, especially if she is her first born, and she wants to appear in an elegant look that suits her. It is worth mentioning that with this year’s fashion for children’s clothes 2023 we found a lot of beautiful girls’ clothes that suit her Give your child an attractive and modern look","sw":"Jumia Baby Girls Clothes 2023 Nytt och varierat mode för små flickor, varje mamma letar efter stilrent och distinkt mode för sitt barn, speciellt om hon är hennes förstfödda, och hon vill framstå i en elegant look som passar henne. Det är värt nämner att med årets mode för barnkläder 2023 hittade vi många vackra tjejkläder som passar henne Ge ditt barn en attraktiv och modern look"},"price":"10.00","price_k":"10.00","quantity":"20","modal_number":null,"department":null,"cover_img":"http://beautiheath.com/sub/eshop/img/product/16566545751.jpg","slug":{"ar":"قميص قطن بجيب امامي وطبعة شكل مرساة للاولاد من اندورا","en":"Baby girls' clothes, pictures, baby girls'"},"status":"0","date":"2023-01-02","size":["xl","xx","ml","xlg"],"color":["#ff0000","#ff00bf","#0000ff","#004d4d"],"created_at":"2022-07-01T05:49:35.000000Z","updated_at":"2022-07-01T06:14:25.000000Z","name":"Baby girls' clothes, pictures, baby girls'","description":"Jumia Baby Girls Clothes 2023 New and varied little girls’ fashion, every mother is looking for classy and distinctive fashion for her child, especially if she is her first born, and she wants to appear in an elegant look that suits her. It is worth mentioning that with this year’s fashion for children’s clothes 2023 we found a lot of beautiful girls’ clothes that suit her Give your child an attractive and modern look","product_image":[{"id":7,"productId":"7","image":"http://beautiheath.com/sub/eshop/img/product/16566545751.jpg","created_at":"2022-07-01T05:49:35.000000Z","updated_at":"2022-07-01T05:49:35.000000Z"},{"id":28,"productId":"7","image":"http://beautiheath.com/sub/eshop/img/product/1663143730.jpeg","created_at":"2022-09-14T08:13:29.000000Z","updated_at":"2022-09-14T08:22:10.000000Z"}],"wishlist":false}]

class SearchModel {
  SearchModel({
    bool? status,
    String? msg,
    List<Data>? data,}){
    _status = status;
    _msg = msg;
    _data = data;
  }

  SearchModel.fromJson(dynamic json) {
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

/// id : 7
/// categoryId : "3"
/// vendorId : "1"
/// shopId : "1"
/// names : {"ar":"قميص قطن بجيب امامي وطبعة شكل مرساة للاولاد من اندورا","en":"Baby girls' clothes, pictures, baby girls'","sw":"Andora Cotton Anchor Print Front Pocket Shirt för pojkar"}
/// descriptions : {"ar":"جوميا ملابس بنات اطفال 2023 ازياء بنات صغيرة جديده ومتنوعه، تبحث كل أم عن أزياء راقية ومميزة لطفلتها وخاصة إذا كانت مولودتها الأولى فهى ترغب أن تظهر بإطلالة أنيقة تليق بها وجدير بالذكر أن مع موضة هذا العام 2023 لملابس الأطفال وجدنا الكثير من ملابس البنات الجميلة التى تليق بطفلتك وتمنحها مظهر جذاب وعصرى","en":"Jumia Baby Girls Clothes 2023 New and varied little girls’ fashion, every mother is looking for classy and distinctive fashion for her child, especially if she is her first born, and she wants to appear in an elegant look that suits her. It is worth mentioning that with this year’s fashion for children’s clothes 2023 we found a lot of beautiful girls’ clothes that suit her Give your child an attractive and modern look","sw":"Jumia Baby Girls Clothes 2023 Nytt och varierat mode för små flickor, varje mamma letar efter stilrent och distinkt mode för sitt barn, speciellt om hon är hennes förstfödda, och hon vill framstå i en elegant look som passar henne. Det är värt nämner att med årets mode för barnkläder 2023 hittade vi många vackra tjejkläder som passar henne Ge ditt barn en attraktiv och modern look"}
/// price : "10.00"
/// price_k : "10.00"
/// quantity : "20"
/// modal_number : null
/// department : null
/// cover_img : "http://beautiheath.com/sub/eshop/img/product/16566545751.jpg"
/// slug : {"ar":"قميص قطن بجيب امامي وطبعة شكل مرساة للاولاد من اندورا","en":"Baby girls' clothes, pictures, baby girls'"}
/// status : "0"
/// date : "2023-01-02"
/// size : ["xl","xx","ml","xlg"]
/// color : ["#ff0000","#ff00bf","#0000ff","#004d4d"]
/// created_at : "2022-07-01T05:49:35.000000Z"
/// updated_at : "2022-07-01T06:14:25.000000Z"
/// name : "Baby girls' clothes, pictures, baby girls'"
/// description : "Jumia Baby Girls Clothes 2023 New and varied little girls’ fashion, every mother is looking for classy and distinctive fashion for her child, especially if she is her first born, and she wants to appear in an elegant look that suits her. It is worth mentioning that with this year’s fashion for children’s clothes 2023 we found a lot of beautiful girls’ clothes that suit her Give your child an attractive and modern look"
/// product_image : [{"id":7,"productId":"7","image":"http://beautiheath.com/sub/eshop/img/product/16566545751.jpg","created_at":"2022-07-01T05:49:35.000000Z","updated_at":"2022-07-01T05:49:35.000000Z"},{"id":28,"productId":"7","image":"http://beautiheath.com/sub/eshop/img/product/1663143730.jpeg","created_at":"2022-09-14T08:13:29.000000Z","updated_at":"2022-09-14T08:22:10.000000Z"}]
/// wishlist : false

class Data {
  Data({
    int? id,
    String? categoryId,
    String? vendorId,
    String? shopId,
    Names? names,
    Descriptions? descriptions,
    String? price,
    String? priceK,
    String? quantity,
    dynamic modalNumber,
    dynamic department,
    String? coverImg,
    Slug? slug,
    String? status,
    String? date,
    List<String>? size,
    List<String>? color,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? description,
    List<ProductImage>? productImage,
    bool? wishlist,}){
    _id = id;
    _categoryId = categoryId;
    _vendorId = vendorId;
    _shopId = shopId;
    _names = names;
    _descriptions = descriptions;
    _price = price;
    _priceK = priceK;
    _quantity = quantity;
    _modalNumber = modalNumber;
    _department = department;
    _coverImg = coverImg;
    _slug = slug;
    _status = status;
    _date = date;
    _size = size;
    _color = color;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _name = name;
    _description = description;
    _productImage = productImage;
    _wishlist = wishlist;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _categoryId = json['categoryId'];
    _vendorId = json['vendorId'];
    _shopId = json['shopId'];
    _names = json['names'] != null ? Names.fromJson(json['names']) : null;
    _descriptions = json['descriptions'] != null ? Descriptions.fromJson(json['descriptions']) : null;
    _price = json['price'];
    _priceK = json['price_k'];
    _quantity = json['quantity'];
    _modalNumber = json['modal_number'];
    _department = json['department'];
    _coverImg = json['cover_img'];
    _slug = json['slug'] != null ? Slug.fromJson(json['slug']) : null;
    _status = json['status'];
    _date = json['date'];
    _size = json['size'] != null ? json['size'].cast<String>() : [];
    _color = json['color'] != null ? json['color'].cast<String>() : [];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _name = json['name'];
    _description = json['description'];
    if (json['product_image'] != null) {
      _productImage = [];
      json['product_image'].forEach((v) {
        _productImage?.add(ProductImage.fromJson(v));
      });
    }
    _wishlist = json['wishlist'];
  }
  int? _id;
  String? _categoryId;
  String? _vendorId;
  String? _shopId;
  Names? _names;
  Descriptions? _descriptions;
  String? _price;
  String? _priceK;
  String? _quantity;
  dynamic _modalNumber;
  dynamic _department;
  String? _coverImg;
  Slug? _slug;
  String? _status;
  String? _date;
  List<String>? _size;
  List<String>? _color;
  String? _createdAt;
  String? _updatedAt;
  String? _name;
  String? _description;
  List<ProductImage>? _productImage;
  bool? _wishlist;

  int? get id => _id;
  String? get categoryId => _categoryId;
  String? get vendorId => _vendorId;
  String? get shopId => _shopId;
  Names? get names => _names;
  Descriptions? get descriptions => _descriptions;
  String? get price => _price;
  String? get priceK => _priceK;
  String? get quantity => _quantity;
  dynamic get modalNumber => _modalNumber;
  dynamic get department => _department;
  String? get coverImg => _coverImg;
  Slug? get slug => _slug;
  String? get status => _status;
  String? get date => _date;
  List<String>? get size => _size;
  List<String>? get color => _color;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get name => _name;
  String? get description => _description;
  List<ProductImage>? get productImage => _productImage;
  bool? get wishlist => _wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['categoryId'] = _categoryId;
    map['vendorId'] = _vendorId;
    map['shopId'] = _shopId;
    if (_names != null) {
      map['names'] = _names?.toJson();
    }
    if (_descriptions != null) {
      map['descriptions'] = _descriptions?.toJson();
    }
    map['price'] = _price;
    map['price_k'] = _priceK;
    map['quantity'] = _quantity;
    map['modal_number'] = _modalNumber;
    map['department'] = _department;
    map['cover_img'] = _coverImg;
    if (_slug != null) {
      map['slug'] = _slug?.toJson();
    }
    map['status'] = _status;
    map['date'] = _date;
    map['size'] = _size;
    map['color'] = _color;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['name'] = _name;
    map['description'] = _description;
    if (_productImage != null) {
      map['product_image'] = _productImage?.map((v) => v.toJson()).toList();
    }
    map['wishlist'] = _wishlist;
    return map;
  }

}

/// id : 7
/// productId : "7"
/// image : "http://beautiheath.com/sub/eshop/img/product/16566545751.jpg"
/// created_at : "2022-07-01T05:49:35.000000Z"
/// updated_at : "2022-07-01T05:49:35.000000Z"

class ProductImage {
  ProductImage({
    int? id,
    String? productId,
    String? image,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _productId = productId;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  ProductImage.fromJson(dynamic json) {
    _id = json['id'];
    _productId = json['productId'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _productId;
  String? _image;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  String? get productId => _productId;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['productId'] = _productId;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// ar : "قميص قطن بجيب امامي وطبعة شكل مرساة للاولاد من اندورا"
/// en : "Baby girls' clothes, pictures, baby girls'"

class Slug {
  Slug({
    String? ar,
    String? en,}){
    _ar = ar;
    _en = en;
  }

  Slug.fromJson(dynamic json) {
    _ar = json['ar'];
    _en = json['en'];
  }
  String? _ar;
  String? _en;

  String? get ar => _ar;
  String? get en => _en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ar'] = _ar;
    map['en'] = _en;
    return map;
  }

}

/// ar : "جوميا ملابس بنات اطفال 2023 ازياء بنات صغيرة جديده ومتنوعه، تبحث كل أم عن أزياء راقية ومميزة لطفلتها وخاصة إذا كانت مولودتها الأولى فهى ترغب أن تظهر بإطلالة أنيقة تليق بها وجدير بالذكر أن مع موضة هذا العام 2023 لملابس الأطفال وجدنا الكثير من ملابس البنات الجميلة التى تليق بطفلتك وتمنحها مظهر جذاب وعصرى"
/// en : "Jumia Baby Girls Clothes 2023 New and varied little girls’ fashion, every mother is looking for classy and distinctive fashion for her child, especially if she is her first born, and she wants to appear in an elegant look that suits her. It is worth mentioning that with this year’s fashion for children’s clothes 2023 we found a lot of beautiful girls’ clothes that suit her Give your child an attractive and modern look"
/// sw : "Jumia Baby Girls Clothes 2023 Nytt och varierat mode för små flickor, varje mamma letar efter stilrent och distinkt mode för sitt barn, speciellt om hon är hennes förstfödda, och hon vill framstå i en elegant look som passar henne. Det är värt nämner att med årets mode för barnkläder 2023 hittade vi många vackra tjejkläder som passar henne Ge ditt barn en attraktiv och modern look"

class Descriptions {
  Descriptions({
    String? ar,
    String? en,
    String? sw,}){
    _ar = ar;
    _en = en;
    _sw = sw;
  }

  Descriptions.fromJson(dynamic json) {
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

/// ar : "قميص قطن بجيب امامي وطبعة شكل مرساة للاولاد من اندورا"
/// en : "Baby girls' clothes, pictures, baby girls'"
/// sw : "Andora Cotton Anchor Print Front Pocket Shirt för pojkar"

class Names {
  Names({
    String? ar,
    String? en,
    String? sw,}){
    _ar = ar;
    _en = en;
    _sw = sw;
  }

  Names.fromJson(dynamic json) {
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