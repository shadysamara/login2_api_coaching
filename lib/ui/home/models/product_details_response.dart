class ProductDetailsResponse {
  bool success;
  Data data;
  int status;
  String message;

  ProductDetailsResponse({this.success, this.data, this.status, this.message});

  ProductDetailsResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int id;
  String name;
  String shortDescription;
  String description;
  int price;
  int salePrice;
  int quantity;
  int percentage;
  int featured;
  bool status;
  var isPoint;
  String home;
  var sku;
  var offerPrice;
  City city;
  Category category;

  Data(
      {this.id,
      this.name,
      this.shortDescription,
      this.description,
      this.price,
      this.salePrice,
      this.quantity,
      this.percentage,
      this.featured,
      this.status,
      this.isPoint,
      this.home,
      this.sku,
      this.offerPrice,
      this.city,
      this.category});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortDescription = json['short_description'];
    description = json['description'];
    price = json['price'];
    salePrice = json['sale_price'];
    quantity = json['quantity'];
    percentage = json['percentage'];
    featured = json['featured'];
    status = json['status'];
    isPoint = json['is_point'];
    home = json['home'];
    sku = json['sku'];
    offerPrice = json['offer_price'];
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['short_description'] = this.shortDescription;
    data['description'] = this.description;
    data['price'] = this.price;
    data['sale_price'] = this.salePrice;
    data['quantity'] = this.quantity;
    data['percentage'] = this.percentage;
    data['featured'] = this.featured;
    data['status'] = this.status;
    data['is_point'] = this.isPoint;
    data['home'] = this.home;
    data['sku'] = this.sku;
    data['offer_price'] = this.offerPrice;
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    return data;
  }
}

class City {
  int id;
  String title;
  String image;

  City({this.id, this.title, this.image});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    return data;
  }
}

class Category {
  int id;
  String name;
  String description;
  int parentId;
  String slug;
  int featured;
  String icons;
  int hasCities;
  int hasSubCategories;

  Category(
      {this.id,
      this.name,
      this.description,
      this.parentId,
      this.slug,
      this.featured,
      this.icons,
      this.hasCities,
      this.hasSubCategories});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    parentId = json['parent_id'];
    slug = json['slug'];
    featured = json['featured'];
    icons = json['icons'];
    hasCities = json['has_cities'];
    hasSubCategories = json['has_sub_categories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['parent_id'] = this.parentId;
    data['slug'] = this.slug;
    data['featured'] = this.featured;
    data['icons'] = this.icons;
    data['has_cities'] = this.hasCities;
    data['has_sub_categories'] = this.hasSubCategories;
    return data;
  }
}
