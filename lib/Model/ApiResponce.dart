import 'ResData.dart';

class ApiResponce {
  int resCode;
  String resMessage;
  ResData resData;

  ApiResponce({this.resCode, this.resMessage, this.resData});

  ApiResponce.fromJson(Map<String, dynamic> json) {
    resCode = json['res_code'];
    resMessage = json['res_message'];
    resData = json['res_data'] != null
        ? new ResData.fromJson(json['res_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res_code'] = this.resCode;
    data['res_message'] = this.resMessage;
    if (this.resData != null) {
      data['res_data'] = this.resData.toJson();
    }
    return data;
  }
}