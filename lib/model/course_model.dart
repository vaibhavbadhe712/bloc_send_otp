// To parse this JSON data, do
//
//     final getData = getDataFromJson(jsonString);

import 'dart:convert';

GetData getDataFromJson(String str) => GetData.fromJson(json.decode(str));

String getDataToJson(GetData data) => json.encode(data.toJson());

class GetData {
    String status;
    Data data;

    GetData({
        required this.status,
        required this.data,
    });

    factory GetData.fromJson(Map<String, dynamic> json) => GetData(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class Data {
    List<Item> items;
    int totalItemsCount;

    Data({
        required this.items,
        required this.totalItemsCount,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        totalItemsCount: json["totalItemsCount"],
    );

    Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "totalItemsCount": totalItemsCount,
    };
}

class Item {
    String id;
    int groupId;
    int courseId;
    int departmentId;
    String code;
    String courseName;
    String duration;
    String mode;
    String university;
    String fees;
    String description;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    Item({
        required this.id,
        required this.groupId,
        required this.courseId,
        required this.departmentId,
        required this.code,
        required this.courseName,
        required this.duration,
        required this.mode,
        required this.university,
        required this.fees,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
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
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
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
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
