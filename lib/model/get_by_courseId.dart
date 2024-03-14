// To parse this JSON data, do
//
//     final getByCourseId = getByCourseIdFromJson(jsonString);

import 'dart:convert';

GetByCourseId getByCourseIdFromJson(String str) => GetByCourseId.fromJson(json.decode(str));

String getByCourseIdToJson(GetByCourseId data) => json.encode(data.toJson());

class GetByCourseId {
    String? status;
    Data? data;

    GetByCourseId({
        this.status,
        this.data,
    });

    factory GetByCourseId.fromJson(Map<String, dynamic> json) => GetByCourseId(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
    };
}

class Data {
    List<Item>? items;
    int? totalItemsCount;

    Data({
        this.items,
        this.totalItemsCount,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        totalItemsCount: json["totalItemsCount"],
    );

    Map<String, dynamic> toJson() => {
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "totalItemsCount": totalItemsCount,
    };
}

class Item {
    String? id;
    int? groupId;
    int? courseId;
    int? departmentId;
    String? code;
    String? courseName;
    String? duration;
    String? mode;
    String? university;
    String? fees;
    String? description;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Item({
        this.id,
        this.groupId,
        this.courseId,
        this.departmentId,
        this.code,
        this.courseName,
        this.duration,
        this.mode,
        this.university,
        this.fees,
        this.description,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["_id"],
        groupId: json["groupId"],
        courseId: json["courseId"],
        departmentId: json["departmentId"],
        code: json["Code"],
        courseName: json["CourseName"],
        duration: json["Duration"],
        mode: json["Mode"],
        university: json["University"],
        fees: json["Fees"],
        description: json["description"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "groupId": groupId,
        "courseId": courseId,
        "departmentId": departmentId,
        "Code": code,
        "CourseName": courseName,
        "Duration": duration,
        "Mode": mode,
        "University": university,
        "Fees": fees,
        "description": description,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
