import 'yoast_models.dart';
import 'links_models.dart';

class Category {
  final int id;
  final String name;
  final String slug;
  final int parent;
  final String description;
  final String display;
  final String? image;
  final int menuOrder;
  final int count;
  final String yoastHead;
  final YoastHeadJson yoastHeadJson;
  final Links links;

  Category({
    required this.id,
    required this.name,
    required this.slug,
    required this.parent,
    required this.description,
    required this.display,
    this.image,
    required this.menuOrder,
    required this.count,
    required this.yoastHead,
    required this.yoastHeadJson,
    required this.links,
  });

  // تحويل من JSON
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      slug: json['slug'] ?? '',
      parent: json['parent'] ?? 0,
      description: json['description'] ?? '',
      display: json['display'] ?? '',
      image: json['image'],
      menuOrder: json['menu_order'] ?? 0,
      count: json['count'] ?? 0,
      yoastHead: json['yoast_head'] ?? '',
      yoastHeadJson: YoastHeadJson.fromJson(json['yoast_head_json'] ?? {}),
      links: Links.fromJson(json['_links'] ?? {}),
    );
  }

  // تحويل لـ JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'parent': parent,
      'description': description,
      'display': display,
      'image': image,
      'menu_order': menuOrder,
      'count': count,
      'yoast_head': yoastHead,
      'yoast_head_json': yoastHeadJson.toJson(),
      '_links': links.toJson(),
    };
  }
}
