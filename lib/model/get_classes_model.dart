class GetClassByCourseId {
    String? status;
    Data? data;

    GetClassByCourseId({
        this.status,
        this.data,
    });

    factory GetClassByCourseId.fromJson(Map<String, dynamic> json) => GetClassByCourseId(
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
    String? name;
    int? courseId;
    int? groupId;
    int? classId;
    String? duration;
    String? mode;
    String? university;
    int? fees;
    int? departmentId;
    String? intake;
    String? management;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Item({
        this.id,
        this.name,
        this.courseId,
        this.groupId,
        this.classId,
        this.duration,
        this.mode,
        this.university,
        this.fees,
        this.departmentId,
        this.intake,
        this.management,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["_id"],
        name: json["name"],
        courseId: json["courseId"],
        groupId: json["groupId"],
        classId: json["classId"],
        duration: json["duration"],
        mode: json["mode"],
        university: json["university"],
        fees: json["fees"],
        departmentId: json["departmentId"],
        intake: json["intake"],
        management: json["management"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "courseId": courseId,
        "groupId": groupId,
        "classId": classId,
        "duration": duration,
        "mode": mode,
        "university": university,
        "fees": fees,
        "departmentId": departmentId,
        "intake": intake,
        "management": management,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
