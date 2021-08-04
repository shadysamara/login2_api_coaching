class ProductsResponse {
  bool success;
  Data data;
  int status;
  String message;

  ProductsResponse({this.success, this.data, this.status, this.message});

  ProductsResponse.fromJson(Map<String, dynamic> json) {
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
  List<Items> items;
  Paginate paginate;

  Data({this.items, this.paginate});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    paginate = json['paginate'] != null
        ? new Paginate.fromJson(json['paginate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.paginate != null) {
      data['paginate'] = this.paginate.toJson();
    }
    return data;
  }
}

class Items {
  int id;
  String name;
  String shortDescription;
  String description;
  int price;
  int salePrice;
  int quantity;
  Null percentage;
  int featured;
  bool status;
  Null isPoint;
  Null home;
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

  Items(
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

  Items.fromJson(Map<String, dynamic> json) {
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
  Null parentId;
  Null slug;
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

class Paginate {
  int currentPage;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  String nextPageUrl;
  var perPage;
  num prevPageUrl;
  int to;
  int total;

  Paginate(
      {this.currentPage,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.nextPageUrl,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Paginate.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}
