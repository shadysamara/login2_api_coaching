class HomeResponse {
  bool success;
  Data data;
  int status;
  String message;

  HomeResponse({this.success, this.data, this.status, this.message});

  HomeResponse.fromJson(Map<String, dynamic> json) {
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
  List<LatestProducts> latestProducts;
  List<Sliders> sliders;
  List<Category> categories;
  List<TopSelling> topSelling;

  Data({this.latestProducts, this.sliders, this.categories, this.topSelling});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['latest_products'] != null) {
      latestProducts = new List<LatestProducts>();
      json['latest_products'].forEach((v) {
        latestProducts.add(new LatestProducts.fromJson(v));
      });
    }
    if (json['sliders'] != null) {
      sliders = new List<Sliders>();
      json['sliders'].forEach((v) {
        sliders.add(new Sliders.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = new List<Category>();
      json['categories'].forEach((v) {
        categories.add(new Category.fromJson(v));
      });
    }
    if (json['top_selling'] != null) {
      topSelling = new List<TopSelling>();
      json['top_selling'].forEach((v) {
        topSelling.add(new TopSelling.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.latestProducts != null) {
      data['latest_products'] =
          this.latestProducts.map((v) => v.toJson()).toList();
    }
    if (this.sliders != null) {
      data['sliders'] = this.sliders.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.topSelling != null) {
      data['top_selling'] = this.topSelling.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LatestProducts {
  int id;
  String name;
  String shortDescription;
  String description;
  num price;
  int salePrice;
  int quantity;
  var percentage;
  int featured;
  bool status;
  var isPoint;
  var home;
  String sku;
  int offerPrice;
  int isFavourite;
  var city;
  List<Images> images;
  Category category;
  num rate;
  bool isTravel;
  var mobile;
  int countReviews;
  String nameAr;
  String descriptionAr;
  String shortDescriptionAr;
  String nameEn;
  String descriptionEn;
  String shortDescriptionEn;

  LatestProducts(
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
      this.isFavourite,
      this.city,
      this.images,
      this.category,
      this.rate,
      this.isTravel,
      this.mobile,
      this.countReviews,
      this.nameAr,
      this.descriptionAr,
      this.shortDescriptionAr,
      this.nameEn,
      this.descriptionEn,
      this.shortDescriptionEn});

  LatestProducts.fromJson(Map<String, dynamic> json) {
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
    isFavourite = json['is_favourite'];
    city = json['city'];
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    rate = json['rate'];
    isTravel = json['is_travel'];
    mobile = json['mobile'];
    countReviews = json['count_reviews'];
    nameAr = json['name_ar'];
    descriptionAr = json['description_ar'];
    shortDescriptionAr = json['short_description_ar'];
    nameEn = json['name_en'];
    descriptionEn = json['description_en'];
    shortDescriptionEn = json['short_description_en'];
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
    data['is_favourite'] = this.isFavourite;
    data['city'] = this.city;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    data['rate'] = this.rate;
    data['is_travel'] = this.isTravel;
    data['mobile'] = this.mobile;
    data['count_reviews'] = this.countReviews;
    data['name_ar'] = this.nameAr;
    data['description_ar'] = this.descriptionAr;
    data['short_description_ar'] = this.shortDescriptionAr;
    data['name_en'] = this.nameEn;
    data['description_en'] = this.descriptionEn;
    data['short_description_en'] = this.shortDescriptionEn;
    return data;
  }
}

class Images {
  int id;
  String image;

  Images({this.id, this.image});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}

class Category {
  int id;
  String name;
  String description;
  var parentId;
  var slug;
  int featured;
  String icons;
  int hasCities;
  int hasSubCategories;
  String nameAr;
  String descriptionAr;
  String nameEn;
  String descriptionEn;

  Category(
      {this.id,
      this.name,
      this.description,
      this.parentId,
      this.slug,
      this.featured,
      this.icons,
      this.hasCities,
      this.hasSubCategories,
      this.nameAr,
      this.descriptionAr,
      this.nameEn,
      this.descriptionEn});

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
    nameAr = json['name_ar'];
    descriptionAr = json['description_ar'];
    nameEn = json['name_en'];
    descriptionEn = json['description_en'];
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
    data['name_ar'] = this.nameAr;
    data['description_ar'] = this.descriptionAr;
    data['name_en'] = this.nameEn;
    data['description_en'] = this.descriptionEn;
    return data;
  }
}

class Sliders {
  int id;
  String title;
  String description;
  String image;
  Product product;

  Sliders({this.id, this.title, this.description, this.image, this.product});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    return data;
  }
}

class Product {
  int id;
  String name;
  int price;
  int salePrice;
  int quantity;
  var percentage;
  int featured;
  bool status;
  var isPoint;
  var home;
  var sku;
  var category;

  Product(
      {this.id,
      this.name,
      this.price,
      this.salePrice,
      this.quantity,
      this.percentage,
      this.featured,
      this.status,
      this.isPoint,
      this.home,
      this.sku,
      this.category});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    salePrice = json['sale_price'];
    quantity = json['quantity'];
    percentage = json['percentage'];
    featured = json['featured'];
    status = json['status'];
    isPoint = json['is_point'];
    home = json['home'];
    sku = json['sku'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['sale_price'] = this.salePrice;
    data['quantity'] = this.quantity;
    data['percentage'] = this.percentage;
    data['featured'] = this.featured;
    data['status'] = this.status;
    data['is_point'] = this.isPoint;
    data['home'] = this.home;
    data['sku'] = this.sku;
    data['category'] = this.category;
    return data;
  }
}

class TopSelling {
  int id;
  String name;
  String shortDescription;
  String description;
  int price;
  int salePrice;
  int quantity;
  var percentage;
  int featured;
  bool status;
  var isPoint;
  var home;
  String sku;
  int offerPrice;
  int isFavourite;
  City city;
  List<Images> images;
  Category category;
  num rate;
  bool isTravel;
  String mobile;
  int countReviews;
  String nameAr;
  String descriptionAr;
  String shortDescriptionAr;
  String nameEn;
  String descriptionEn;
  String shortDescriptionEn;

  TopSelling(
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
      this.isFavourite,
      this.city,
      this.images,
      this.category,
      this.rate,
      this.isTravel,
      this.mobile,
      this.countReviews,
      this.nameAr,
      this.descriptionAr,
      this.shortDescriptionAr,
      this.nameEn,
      this.descriptionEn,
      this.shortDescriptionEn});

  TopSelling.fromJson(Map<String, dynamic> json) {
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
    isFavourite = json['is_favourite'];
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    rate = json['rate'];
    isTravel = json['is_travel'];
    mobile = json['mobile'];
    countReviews = json['count_reviews'];
    nameAr = json['name_ar'];
    descriptionAr = json['description_ar'];
    shortDescriptionAr = json['short_description_ar'];
    nameEn = json['name_en'];
    descriptionEn = json['description_en'];
    shortDescriptionEn = json['short_description_en'];
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
    data['is_favourite'] = this.isFavourite;
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    data['rate'] = this.rate;
    data['is_travel'] = this.isTravel;
    data['mobile'] = this.mobile;
    data['count_reviews'] = this.countReviews;
    data['name_ar'] = this.nameAr;
    data['description_ar'] = this.descriptionAr;
    data['short_description_ar'] = this.shortDescriptionAr;
    data['name_en'] = this.nameEn;
    data['description_en'] = this.descriptionEn;
    data['short_description_en'] = this.shortDescriptionEn;
    return data;
  }
}

class City {
  int id;
  String title;
  String image;
  String titleAr;
  String titleEn;

  City({this.id, this.title, this.image, this.titleAr, this.titleEn});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['title_ar'] = this.titleAr;
    data['title_en'] = this.titleEn;
    return data;
  }
}
