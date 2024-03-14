// To parse this JSON data, do
//
//     final storeData = storeDataFromJson(jsonString);

import 'dart:convert';

StoreData storeDataFromJson(String str) => StoreData.fromJson(json.decode(str));

String storeDataToJson(StoreData data) => json.encode(data.toJson());

class StoreData {
  String? status;
  Data? data;

  StoreData({
    this.status,
    this.data,
  });

  factory StoreData.fromJson(Map<String, dynamic> json) => StoreData(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
      };
}

class Data {
  int? groupId;
  int? studentAdmissionId;
  String? location;
  int? studentId;
  String? id;
  String? title;
  String? firstName;
  String? middleName;
  String? lastName;
  DateTime? dob;
  int? relegionId;
  int? categoryId;
  String? gender;
  String? email;
  String? phoneNo;
  String? aadharCard;
  Address? address;
  Marks? marks;
  FamilyDetails? familyDetails;
  List<EmergencyContact>? emergencyContact;
  Contact? contact;
  SecuritySettings? securitySettings;
  Document? document;
  List<EmergencyContact>? references;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Data({
    this.groupId,
    this.studentAdmissionId,
    this.location,
    this.studentId,
    this.id,
    this.title,
    this.firstName,
    this.middleName,
    this.lastName,
    this.dob,
    this.relegionId,
    this.categoryId,
    this.gender,
    this.email,
    this.phoneNo,
    this.aadharCard,
    this.address,
    this.marks,
    this.familyDetails,
    this.emergencyContact,
    this.contact,
    this.securitySettings,
    this.document,
    this.references,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        groupId: json["groupId"],
        studentAdmissionId: json["studentAdmissionId"],
        location: json["location"],
        studentId: json["studentId"],
        id: json["_id"],
        title: json["title"],
        firstName: json["firstName"],
        middleName: json["middleName"],
        lastName: json["lastName"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        relegionId: json["relegionId"],
        categoryId: json["categoryId"],
        gender: json["gender"],
        email: json["email"],
        phoneNo: json["phoneNo"],
        aadharCard: json["aadharCard"],
        address:
            json["address"] == null ? null : Address.fromJson(json["address"]),
        marks: json["marks"] == null ? null : Marks.fromJson(json["marks"]),
        familyDetails: json["familyDetails"] == null
            ? null
            : FamilyDetails.fromJson(json["familyDetails"]),
        emergencyContact: json["emergencyContact"] == null
            ? []
            : List<EmergencyContact>.from(json["emergencyContact"]!
                .map((x) => EmergencyContact.fromJson(x))),
        contact:
            json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        securitySettings: json["securitySettings"] == null
            ? null
            : SecuritySettings.fromJson(json["securitySettings"]),
        document: json["document"] == null
            ? null
            : Document.fromJson(json["document"]),
        references: json["references"] == null
            ? []
            : List<EmergencyContact>.from(
                json["references"]!.map((x) => EmergencyContact.fromJson(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "studentAdmissionId": studentAdmissionId,
        "location": location,
        "studentId": studentId,
        "_id": id,
        "title": title,
        "firstName": firstName,
        "middleName": middleName,
        "lastName": lastName,
        "dob":
            "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "relegionId": relegionId,
        "categoryId": categoryId,
        "gender": gender,
        "email": email,
        "phoneNo": phoneNo,
        "aadharCard": aadharCard,
        "address": address?.toJson(),
        "marks": marks?.toJson(),
        "familyDetails": familyDetails?.toJson(),
        "emergencyContact": emergencyContact == null
            ? []
            : List<dynamic>.from(emergencyContact!.map((x) => x.toJson())),
        "contact": contact?.toJson(),
        "securitySettings": securitySettings?.toJson(),
        "document": document?.toJson(),
        "references": references == null
            ? []
            : List<dynamic>.from(references!.map((x) => x.toJson())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class Address {
  String? city;
  String? state;

  Address({
    this.city,
    this.state,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "state": state,
      };
}

class Contact {
  int? phoneNumber;
  String? email;
  int? whatsappNo;
  String? facebook;
  String? instagram;
  String? linkedinUrl;

  Contact({
    this.phoneNumber,
    this.email,
    this.whatsappNo,
    this.facebook,
    this.instagram,
    this.linkedinUrl,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        phoneNumber: json["phoneNumber"],
        email: json["email"],
        whatsappNo: json["whatsappNo"],
        facebook: json["facebook"],
        instagram: json["instagram"],
        linkedinUrl: json["linkedinURL"],
      );

  Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "email": email,
        "whatsappNo": whatsappNo,
        "facebook": facebook,
        "instagram": instagram,
        "linkedinURL": linkedinUrl,
      };
}

class Document {
  String? docTitle;
  DateTime? expiryDate;

  Document({
    this.docTitle,
    this.expiryDate,
  });

  factory Document.fromJson(Map<String, dynamic> json) => Document(
        docTitle: json["docTitle"],
        expiryDate: json["expiryDate"] == null
            ? null
            : DateTime.parse(json["expiryDate"]),
      );

  Map<String, dynamic> toJson() => {
        "docTitle": docTitle,
        "expiryDate":
            "${expiryDate!.year.toString().padLeft(4, '0')}-${expiryDate!.month.toString().padLeft(2, '0')}-${expiryDate!.day.toString().padLeft(2, '0')}",
      };
}

class EmergencyContact {
  String? name;
  int? phone;
  String? relation;
  String? email;

  EmergencyContact({
    this.name,
    this.phone,
    this.relation,
    this.email,
  });

  factory EmergencyContact.fromJson(Map<String, dynamic> json) =>
      EmergencyContact(
        name: json["name"],
        phone: json["phone"],
        relation: json["relation"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "relation": relation,
        "email": email,
      };
}

class FamilyDetails {
  String? fathersName;
  int? fatherPhone;
  String? mothersName;
  int? mothersPhone;
  String? guardiansName;
  int? guardiansPhone;

  FamilyDetails({
    this.fathersName,
    this.fatherPhone,
    this.mothersName,
    this.mothersPhone,
    this.guardiansName,
    this.guardiansPhone,
  });

  factory FamilyDetails.fromJson(Map<String, dynamic> json) => FamilyDetails(
        fathersName: json["fathersName"],
        fatherPhone: json["fatherPhone"],
        mothersName: json["mothersName"],
        mothersPhone: json["mothersPhone"],
        guardiansName: json["guardiansName"],
        guardiansPhone: json["guardiansPhone"],
      );

  Map<String, dynamic> toJson() => {
        "fathersName": fathersName,
        "fatherPhone": fatherPhone,
        "mothersName": mothersName,
        "mothersPhone": mothersPhone,
        "guardiansName": guardiansName,
        "guardiansPhone": guardiansPhone,
      };
}

class Marks {
  SsCmarks? ssCmarks;
  HsCmarks? hsCmarks;

  Marks({
    this.ssCmarks,
    this.hsCmarks,
  });

  factory Marks.fromJson(Map<String, dynamic> json) => Marks(
        ssCmarks: json["SSCmarks"] == null
            ? null
            : SsCmarks.fromJson(json["SSCmarks"]),
        hsCmarks: json["HSCmarks"] == null
            ? null
            : HsCmarks.fromJson(json["HSCmarks"]),
      );

  Map<String, dynamic> toJson() => {
        "SSCmarks": ssCmarks?.toJson(),
        "HSCmarks": hsCmarks?.toJson(),
      };
}

class HsCmarks {
  int? percentage;
  int? passOutYear;
  String? stream;

  HsCmarks({
    this.percentage,
    this.passOutYear,
    this.stream,
  });

  factory HsCmarks.fromJson(Map<String, dynamic> json) => HsCmarks(
        percentage: json["Percentage"],
        passOutYear: json["PassOutYear"],
        stream: json["Stream"],
      );

  Map<String, dynamic> toJson() => {
        "Percentage": percentage,
        "PassOutYear": passOutYear,
        "Stream": stream,
      };
}

class SsCmarks {
  int? percentage;
  int? passOutYear;

  SsCmarks({
    this.percentage,
    this.passOutYear,
  });

  factory SsCmarks.fromJson(Map<String, dynamic> json) => SsCmarks(
        percentage: json["Percentage"],
        passOutYear: json["PassOutYear"],
      );

  Map<String, dynamic> toJson() => {
        "Percentage": percentage,
        "PassOutYear": passOutYear,
      };
}

class SecuritySettings {
  int? smartId;
  String? chekList;

  SecuritySettings({
    this.smartId,
    this.chekList,
  });

  factory SecuritySettings.fromJson(Map<String, dynamic> json) =>
      SecuritySettings(
        smartId: json["smartId"],
        chekList: json["chekList"],
      );

  Map<String, dynamic> toJson() => {
        "smartId": smartId,
        "chekList": chekList,
      };
}
