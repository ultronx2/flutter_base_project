class LoginRequest {
  LoginRequest({
    this.email,
    this.password,
    this.deviceType,
    this.deviceToken,
  });

  LoginRequest.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];
    deviceType = json['deviceType'];
    deviceToken = json['deviceToken'];
  }
  String? email;
  String? password;
  num? deviceType;
  String? deviceToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    map['deviceType'] = deviceType;
    map['deviceToken'] = deviceToken;
    return map;
  }

  LoginRequest copyWith({
    String? email,
    String? password,
    num? deviceType,
    String? deviceToken,
  }) {
    return LoginRequest(
      email: email ?? this.email,
      password: password ?? this.password,
      deviceType: deviceType ?? this.deviceType,
      deviceToken: deviceToken ?? this.deviceToken,
    );
  }
}
