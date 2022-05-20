class TouristData {
  int? page;
  int? per_page;
  int? totalrecord;
  int? total_pages;
  List<TouristPlace>? data;
  TouristData(
      {this.page,
      this.per_page,
      this.total_pages,
      this.totalrecord,
      this.data});

  TouristData.formJson(Map<String, dynamic> json) {
    page = json["page"];
    per_page = json["per_page"];
    total_pages = json["total_pages"];
    totalrecord = json["totalrecord"];
    if (json['data'] != null) {
      data = <TouristPlace>[];
      json['data'].forEach((v) {
        data!.add(new TouristPlace.formJson(v));
      });
    }
  }
}

class TouristPlace {
  int? id;
  String? tourist_name;
  String? tourist_email;
  String? tourist_profilepicture;
  String? tourist_location;
  String? createdat;

  TouristPlace(
      {this.createdat,
      this.id,
      this.tourist_email,
      this.tourist_location,
      this.tourist_name,
      this.tourist_profilepicture});

  TouristPlace.formJson(Map<String, dynamic> json) {
    id = json["id"];
    tourist_email = json["tourist_email"];
    tourist_name = json["tourist_name"];
    tourist_profilepicture = json["tourist_profilepicture"];
    tourist_location = json["tourist_location"];
    createdat = json["createdat"];
  }
}

/*
 "id": 821,
            "tourist_name": "Vikrant Bhardwaj",
            "tourist_email": "thefreshprinceofpanjab@gmail.com",
            "tourist_profilepicture": "http://restapi.adequateshop.com/Media//Images/userimageicon.png",
            "tourist_location": "USA",
            "createdat": "2020-10-13T14:32:46.3298242"
 */