import 'dart:convert';

List<ItemEntry> itemEntryFromJson(String str) =>
    List<ItemEntry>.from(json.decode(str).map((x) => ItemEntry.fromJson(x)));

String itemEntryToJson(List<ItemEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemEntry {
  String id;
  String name;
  int price;
  String description;
  String thumbnail;
  String thumbnailCustom;
  DateTime createdAt;
  DateTime updatedAt;
  String category;
  String categoryDisplay;
  bool isFeatured;
  bool isItemHot;
  int itemViews;
  String user;
  int userId;

  ItemEntry({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.thumbnailCustom,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
    required this.categoryDisplay,
    required this.isFeatured,
    required this.isItemHot,
    required this.itemViews,
    required this.user,
    required this.userId,
  });

  factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    thumbnail: json["thumbnail"],
    thumbnailCustom: json["thumbnail_custom"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    category: json["category"],
    categoryDisplay: json["category_display"],
    isFeatured: json["is_featured"],
    isItemHot: json["is_item_hot"],
    itemViews: json["item_views"],
    user: json["user"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "description": description,
    "thumbnail": thumbnail,
    "thumbnail_custom": thumbnailCustom,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "category": category,
    "category_display": categoryDisplay,
    "is_featured": isFeatured,
    "is_item_hot": isItemHot,
    "item_views": itemViews,
    "user": user,
    "user_id": userId,
  };
}
