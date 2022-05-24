class LocationData {
  String? status;
  List<Data>? data;
  String? message;

  LocationData({this.status, this.data, this.message});

  LocationData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  String? city;
  String? pinCode;
  String? createdBy;
  String? createdDate;

  Data({this.id, this.city, this.pinCode, this.createdBy, this.createdDate});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'];
    pinCode = json['pinCode'];
    createdBy = json['createdBy'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city'] = this.city;
    data['pinCode'] = this.pinCode;
    data['createdBy'] = this.createdBy;
    data['createdDate'] = this.createdDate;
    return data;
  }
}
