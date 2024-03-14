// To parse this JSON data, do
//
//     final memberData = memberDataFromJson(jsonString);

import 'dart:convert';

MemberData memberDataFromJson(String str) =>
    MemberData.fromJson(json.decode(str));

String memberDataToJson(MemberData data) => json.encode(data.toJson());

class MemberData {
  Member? member;
  User? user;
  UserGroup? userGroup;

  MemberData({
    this.member,
    this.user,
    this.userGroup,
  });

  factory MemberData.fromJson(Map<String, dynamic> json) => MemberData(
        member: json["member"] == null ? null : Member.fromJson(json["member"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        userGroup: json["userGroup"] == null
            ? null
            : UserGroup.fromJson(json["userGroup"]),
      );

  Map<String, dynamic> toJson() => {
        "member": member?.toJson(),
        "user": user?.toJson(),
        "userGroup": userGroup?.toJson(),
      };
}

class Member {
  String? id;
  String? name;
  int? groupId;
  int? roleId;
  int? empId;
  String? status;
  List<dynamic>? membership;
  List<dynamic>? accountDetails;
  List<dynamic>? experiences;
  String? profileImg;
  String? mailtoTitle;
  String? firstname;
  String? middlename;
  String? lastname;
  int? phonenumber;
  DateTime? dateofbirth;
  String? gender;
  int? religion;
  int? caste;
  String? location;
  String? email;
  int? academicYear;
  int? password;
  List<dynamic>? addresses;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  int? userId;

  Member({
    this.id,
    this.name,
    this.groupId,
    this.roleId,
    this.empId,
    this.status,
    this.membership,
    this.accountDetails,
    this.experiences,
    this.profileImg,
    this.mailtoTitle,
    this.firstname,
    this.middlename,
    this.lastname,
    this.phonenumber,
    this.dateofbirth,
    this.gender,
    this.religion,
    this.caste,
    this.location,
    this.email,
    this.academicYear,
    this.password,
    this.addresses,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.userId,
  });

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["_id"],
        name: json["name"],
        groupId: json["groupId"],
        roleId: json["roleId"],
        empId: json["empId"],
        status: json["status"],
        membership: json["membership"] == null
            ? []
            : List<dynamic>.from(json["membership"]!.map((x) => x)),
        accountDetails: json["accountDetails"] == null
            ? []
            : List<dynamic>.from(json["accountDetails"]!.map((x) => x)),
        experiences: json["experiences"] == null
            ? []
            : List<dynamic>.from(json["experiences"]!.map((x) => x)),
        profileImg: json["profile_img"],
        mailtoTitle: json["mailto:title"],
        firstname: json["firstname"],
        middlename: json["middlename"],
        lastname: json["lastname"],
        phonenumber: json["phonenumber"],
        dateofbirth: json["dateofbirth"] == null
            ? null
            : DateTime.parse(json["dateofbirth"]),
        gender: json["gender"],
        religion: json["religion"],
        caste: json["caste"],
        location: json["location"],
        email: json["email"],
        academicYear: json["academicYear"],
        password: json["password"],
        addresses: json["addresses"] == null
            ? []
            : List<dynamic>.from(json["addresses"]!.map((x) => x)),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "groupId": groupId,
        "roleId": roleId,
        "empId": empId,
        "status": status,
        "membership": membership == null
            ? []
            : List<dynamic>.from(membership!.map((x) => x)),
        "accountDetails": accountDetails == null
            ? []
            : List<dynamic>.from(accountDetails!.map((x) => x)),
        "experiences": experiences == null
            ? []
            : List<dynamic>.from(experiences!.map((x) => x)),
        "profile_img": profileImg,
        "mailto:title": mailtoTitle,
        "firstname": firstname,
        "middlename": middlename,
        "lastname": lastname,
        "phonenumber": phonenumber,
        "dateofbirth": dateofbirth?.toIso8601String(),
        "gender": gender,
        "religion": religion,
        "caste": caste,
        "location": location,
        "email": email,
        "academicYear": academicYear,
        "password": password,
        "addresses": addresses == null
            ? []
            : List<dynamic>.from(addresses!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "userId": userId,
      };
}

class User {
  String? status;
  Data? data;
  String? message;

  User({
    this.status,
    this.data,
    this.message,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
        "message": message,
      };
}

class Data {
  String? id;
  String? name;
  int? userId;
  String? password;
  String? email;
  String? gender;
  String? imageUrl;
  String? token;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Data({
    this.id,
    this.name,
    this.userId,
    this.password,
    this.email,
    this.gender,
    this.imageUrl,
    this.token,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        name: json["name"],
        userId: json["userId"],
        password: json["password"],
        email: json["email"],
        gender: json["gender"],
        imageUrl: json["imageUrl"],
        token: json["token"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "userId": userId,
        "password": password,
        "email": email,
        "gender": gender,
        "imageUrl": imageUrl,
        "token": token,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class UserGroup {
  String? status;
  bool? success;
  String? message;

  UserGroup({
    this.status,
    this.success,
    this.message,
  });

  factory UserGroup.fromJson(Map<String, dynamic> json) => UserGroup(
        status: json["status"],
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "message": message,
      };
}
