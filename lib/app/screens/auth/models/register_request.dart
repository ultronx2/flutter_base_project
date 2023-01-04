class SignUpRequest {
  SignUpRequest({
    this.email,
    this.password,
    this.userName,
    this.deviceToken,
    this.deviceType,
  });

  SignUpRequest.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];
    userName = json['name'];
    deviceToken = json['deviceToken'];
    deviceType = json['deviceType'];
  }
  String? email;
  String? password;
  String? userName;
  String? deviceToken;
  num? deviceType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    map['name'] = userName;
    map['deviceToken'] = deviceToken;
    map['deviceType'] = deviceType;
    return map;
  }

  SignUpRequest copyWith({
    String? email,
    String? password,
    String? userName,
    String? deviceToken,
    num? deviceType,
  }) {
    return SignUpRequest(
      email: email ?? this.email,
      password: password ?? this.password,
      userName: userName ?? this.userName,
      deviceToken: deviceToken ?? this.deviceToken,
      deviceType: deviceType ?? this.deviceType,
    );
  }
}
