class AuthResponse {
  AuthResponse({
    this.data,
    this.successMsg,
    this.failureMsg,
    this.apiName,
  });

  AuthResponse.fromJson(dynamic json) {
    data =
        json['data'] != null ? AuthResponseData.fromJson(json['data']) : null;
    successMsg = json['successMsg'];
    failureMsg = json['failureMsg'];
    apiName = json['apiName'];
  }
  AuthResponseData? data;
  String? successMsg;
  String? failureMsg;
  String? apiName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['successMsg'] = successMsg;
    map['failureMsg'] = failureMsg;
    map['apiName'] = apiName;
    return map;
  }
}

class AuthResponseData {
  AuthResponseData({
    this.userId,
    this.name,
    this.email,
    this.profileImage,
    this.authorizationToken,
    this.userType,
  });

  AuthResponseData.fromJson(dynamic json) {
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    profileImage = json['profileImage'];
    authorizationToken = json['authorizationToken'];
    userType = json['userType'];
  }
  num? userId;
  String? name;
  String? email;
  dynamic profileImage;
  String? authorizationToken;

  /// 1 == Admin
  ///
  /// 2 == User
  ///
  /// 3 == ServiceProvider
  num? userType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['name'] = name;
    map['email'] = email;
    map['profileImage'] = profileImage;
    map['authorizationToken'] = authorizationToken;
    map['userType'] = userType;
    return map;
  }
}
