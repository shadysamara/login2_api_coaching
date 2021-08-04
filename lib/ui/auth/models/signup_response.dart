class SignUpResponse {
  bool success;
  Data data;
  int status;
  String message;

  SignUpResponse({this.success, this.data, this.status, this.message});

  SignUpResponse.fromJson(Map<String, dynamic> json) {
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
  String firstName;
  String lastName;
  String email;
  String phone;
  String image;
  String lang;
  String createdAt;
  String accessToken;
  GiftCoupon giftCoupon;
  bool verified;
  var verifyToken;
  var point;
  int cancelCount;
  int completeCount;
  int processingCount;
  int pendingCount;
  int ofdCount;
  int unpaidOrderCount;
  int confirmedCount;

  Data(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.image,
      this.lang,
      this.createdAt,
      this.accessToken,
      this.giftCoupon,
      this.verified,
      this.verifyToken,
      this.point,
      this.cancelCount,
      this.completeCount,
      this.processingCount,
      this.pendingCount,
      this.ofdCount,
      this.unpaidOrderCount,
      this.confirmedCount});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    lang = json['lang'];
    createdAt = json['created_at'];
    accessToken = json['access_token'];
    giftCoupon = json['gift_coupon'] != null
        ? new GiftCoupon.fromJson(json['gift_coupon'])
        : null;
    verified = json['verified'];
    verifyToken = json['verify_token'];
    point = json['point'];
    cancelCount = json['cancel_count'];
    completeCount = json['complete_count'];
    processingCount = json['processing_count'];
    pendingCount = json['pending_count'];
    ofdCount = json['ofd_count'];
    unpaidOrderCount = json['unpaid_order_count'];
    confirmedCount = json['confirmed_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['lang'] = this.lang;
    data['created_at'] = this.createdAt;
    data['access_token'] = this.accessToken;
    if (this.giftCoupon != null) {
      data['gift_coupon'] = this.giftCoupon.toJson();
    }
    data['verified'] = this.verified;
    data['verify_token'] = this.verifyToken;
    data['point'] = this.point;
    data['cancel_count'] = this.cancelCount;
    data['complete_count'] = this.completeCount;
    data['processing_count'] = this.processingCount;
    data['pending_count'] = this.pendingCount;
    data['ofd_count'] = this.ofdCount;
    data['unpaid_order_count'] = this.unpaidOrderCount;
    data['confirmed_count'] = this.confirmedCount;
    return data;
  }
}

class GiftCoupon {
  int id;
  String title;
  String description;
  String promoCode;
  int amount;
  String amountLabel;
  int type;
  int amountType;
  String startDate;
  String endDate;
  int isUsed;
  var point;
  String createdAt;

  GiftCoupon(
      {this.id,
      this.title,
      this.description,
      this.promoCode,
      this.amount,
      this.amountLabel,
      this.type,
      this.amountType,
      this.startDate,
      this.endDate,
      this.isUsed,
      this.point,
      this.createdAt});

  GiftCoupon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    promoCode = json['promo_code'];
    amount = json['amount'];
    amountLabel = json['amount_label'];
    type = json['type'];
    amountType = json['amount_type'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    isUsed = json['is_used'];
    point = json['point'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['promo_code'] = this.promoCode;
    data['amount'] = this.amount;
    data['amount_label'] = this.amountLabel;
    data['type'] = this.type;
    data['amount_type'] = this.amountType;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['is_used'] = this.isUsed;
    data['point'] = this.point;
    data['created_at'] = this.createdAt;
    return data;
  }
}
