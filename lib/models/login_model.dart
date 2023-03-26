class ConsultLoginModel {
  bool? success;
  int? status;
  String? message;
  String? data;

  ConsultLoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    data = json['data'];

  }

}