// To parse this JSON data, do
//
//     final getDivisionByClassId = getDivisionByClassIdFromJson(jsonString);

import 'dart:convert';

GetDivisionByClassId getDivisionByClassIdFromJson(String str) => GetDivisionByClassId.fromJson(json.decode(str));

String getDivisionByClassIdToJson(GetDivisionByClassId data) => json.encode(data.toJson());

class GetDivisionByClassId {
    String? status;
    Data? data;

    GetDivisionByClassId({
        this.status,
        this.data,
    });

    factory GetDivisionByClassId.fromJson(Map<String, dynamic> json) => GetDivisionByClassId(
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
    int? divisionId;
    int? department;
    int? courseId;
    String? name;
    int? classId;
    String? startTime;
    String? endTime;
    String? classroom;
    String? incharge;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Item({
        this.id,
        this.groupId,
        this.divisionId,
        this.department,
        this.courseId,
        this.name,
        this.classId,
        this.startTime,
        this.endTime,
        this.classroom,
        this.incharge,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["_id"],
        groupId: json["groupId"],
        divisionId: json["divisionId"],
        department: json["Department"],
        courseId: json["courseId"],
        name: json["Name"],
        classId: json["classId"],
        startTime: json["StartTime"],
        endTime: json["EndTime"],
        classroom: json["Classroom"],
        incharge: json["Incharge"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "groupId": groupId,
        "divisionId": divisionId,
        "Department": department,
        "courseId": courseId,
        "Name": name,
        "classId": classId,
        "StartTime": startTime,
        "EndTime": endTime,
        "Classroom": classroom,
        "Incharge": incharge,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
