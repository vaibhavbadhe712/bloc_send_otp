
class GetReligion {
    String status;
    Data data;

    GetReligion({
        required this.status,
        required this.data,
    });

    factory GetReligion.fromJson(Map<String, dynamic> json) => GetReligion(
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
    int religionId;
    int groupId;
    String religion;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    Item({
        required this.id,
        required this.religionId,
        required this.groupId,
        required this.religion,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["_id"],
        religionId: json["religionId"],
        groupId: json["groupId"],
        religion: json["religion"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "religionId": religionId,
        "groupId": groupId,
        "religion": religion,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
