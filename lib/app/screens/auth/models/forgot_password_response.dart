class ForgotPasswordResponse {
  ForgotPasswordResponse({
    this.data,
    this.successMsg,
    this.code,
    this.failureMsg,
    this.apiName,
  });

  ForgotPasswordResponse.fromJson(dynamic json) {
    data = json['data'];
    successMsg = json['successMsg'];
    code = json['code'];
    failureMsg = json['failureMsg'];
    apiName = json['apiName'];
  }
  bool? data;
  String? successMsg;
  num? code;
  String? failureMsg;
  String? apiName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['successMsg'] = successMsg;
    map['code'] = code;
    map['failureMsg'] = failureMsg;
    map['apiName'] = apiName;
    return map;
  }
}
