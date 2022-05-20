class hospiateldata{
  String?status;
  int?responseCode;
  List<nearestbankplace>?nearstbanks;
  hospiateldata({
    this.status,
    this.responseCode,
    this.nearstbanks
  });
  hospiateldata.fromJson(Map<String,dynamic>json){
    status=json["status"];
    responseCode=json["responseCode"];
    if(json["nearstbanks"]!=null){
      nearstbanks=<nearestbankplace>[];
      json["nearstbanks"].forEach((n){
        nearstbanks!.add(nearestbankplace.fromJson(n));

      });

    }



  }

}
class nearestbankplace{
  Null? par_latitude;
  Null? par_longitude;
  Null? par_radius;
  String? hi_hospitalid;
  String? hi_hospitalname;
  String? hi_phoneno1;
  String? hi_phoneno2;
  String? address;
  String? hi_stateid;
  String? sc_lname;
  String? hi_districtid;
  String? ds_lname;
  String? hi_mandalid;
  String? mdl_lname;
  String? hi_cityid;
  String? ct_lname;
  String? hi_lattitude;
  String? hi_langitude;
  String? earth_distance;
  String? specialityname;
  nearestbankplace({
    this.par_latitude,
    this.par_longitude,
    this.par_radius,
    this.hi_hospitalid,
    this.hi_hospitalname,
    this.hi_phoneno1,
    this.hi_phoneno2,
    this.address,
    this.ct_lname,
    this.ds_lname,
    this.earth_distance,
    this.hi_cityid,
    this.hi_districtid,
    this.hi_langitude,
    this.hi_lattitude,
    this.hi_mandalid,
    this.hi_stateid,
    this.mdl_lname,
    this.sc_lname,
    this.specialityname});
    nearestbankplace.fromJson(Map<String,dynamic>json){
      par_latitude=json["par_latitude"];
      par_longitude=json['par_longitude'];
      par_radius=json["par_radius"];
      hi_hospitalid=json["hi_hospitalid"];
      hi_hospitalname=json["hi_hospitalname"];
      hi_phoneno1=json["hi_phoneno1"];
      hi_phoneno2=json["hi_phoneno2"];
      address=json["address"];
      ct_lname=json["ct_lname"];
      ds_lname=json["ds_lname"];
      earth_distance=json["earth_distance"];
      hi_cityid=json["hi_cityid"];
      hi_districtid=json["hi_districtid"];
      hi_langitude=json["hi_dangitude"];
      hi_lattitude=json["hi_lattitude"];
      mdl_lname=json["mdl_lname"];
      hi_mandalid=json["hi_mandalid"];
      hi_stateid=json["hi_stateid"];
      sc_lname=json['sc_lname'];
      specialityname=json["specialityname"];


     
     


    }

}