class BloodBankData {
  String? status;
  int? responseCode;
  List<Nearstbanks>? nearstbanks;

  BloodBankData({this.status, this.responseCode, this.nearstbanks});

  BloodBankData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    responseCode = json['responseCode'];
    if (json['nearstbanks'] != null) {
      nearstbanks = <Nearstbanks>[];
      json['nearstbanks'].forEach((v) {
        nearstbanks!.add(new Nearstbanks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['responseCode'] = this.responseCode;
    if (this.nearstbanks != null) {
      data['nearstbanks'] = this.nearstbanks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Nearstbanks {
  Null? parLatitude;
  Null? parLongitude;
  Null? parRadius;
  String? hiHospitalid;
  String? hiHospitalname;
  String? hiPhoneno1;
  String? hiPhoneno2;
  String? address;
  String? hiStateid;
  String? scLname;
  String? hiDistrictid;
  String? dsLname;
  String? hiMandalid;
  String? mdlLname;
  String? hiCityid;
  String? ctLname;
  String? hiLattitude;
  String? hiLangitude;
  String? earthDistance;
  String? specialityname;

  Nearstbanks(
      {this.parLatitude,
      this.parLongitude,
      this.parRadius,
      this.hiHospitalid,
      this.hiHospitalname,
      this.hiPhoneno1,
      this.hiPhoneno2,
      this.address,
      this.hiStateid,
      this.scLname,
      this.hiDistrictid,
      this.dsLname,
      this.hiMandalid,
      this.mdlLname,
      this.hiCityid,
      this.ctLname,
      this.hiLattitude,
      this.hiLangitude,
      this.earthDistance,
      this.specialityname});

  Nearstbanks.fromJson(Map<String, dynamic> json) {
    parLatitude = json['par_latitude'];
    parLongitude = json['par_longitude'];
    parRadius = json['par_radius'];
    hiHospitalid = json['hi_hospitalid'];
    hiHospitalname = json['hi_hospitalname'];
    hiPhoneno1 = json['hi_phoneno1'];
    hiPhoneno2 = json['hi_phoneno2'];
    address = json['address'];
    hiStateid = json['hi_stateid'];
    scLname = json['sc_lname'];
    hiDistrictid = json['hi_districtid'];
    dsLname = json['ds_lname'];
    hiMandalid = json['hi_mandalid'];
    mdlLname = json['mdl_lname'];
    hiCityid = json['hi_cityid'];
    ctLname = json['ct_lname'];
    hiLattitude = json['hi_lattitude'];
    hiLangitude = json['hi_langitude'];
    earthDistance = json['earth_distance'];
    specialityname = json['specialityname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['par_latitude'] = this.parLatitude;
    data['par_longitude'] = this.parLongitude;
    data['par_radius'] = this.parRadius;
    data['hi_hospitalid'] = this.hiHospitalid;
    data['hi_hospitalname'] = this.hiHospitalname;
    data['hi_phoneno1'] = this.hiPhoneno1;
    data['hi_phoneno2'] = this.hiPhoneno2;
    data['address'] = this.address;
    data['hi_stateid'] = this.hiStateid;
    data['sc_lname'] = this.scLname;
    data['hi_districtid'] = this.hiDistrictid;
    data['ds_lname'] = this.dsLname;
    data['hi_mandalid'] = this.hiMandalid;
    data['mdl_lname'] = this.mdlLname;
    data['hi_cityid'] = this.hiCityid;
    data['ct_lname'] = this.ctLname;
    data['hi_lattitude'] = this.hiLattitude;
    data['hi_langitude'] = this.hiLangitude;
    data['earth_distance'] = this.earthDistance;
    data['specialityname'] = this.specialityname;
    return data;
  }
}

