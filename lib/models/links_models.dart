class Links {
  final List<LinkItem> self;
  final List<LinkItem> collection;
  final List<LinkItem> up;

  Links({required this.self, required this.collection, required this.up});

  factory Links.fromJson(Map<String, dynamic> json) {
    List<LinkItem> selfList = [];
    if (json['self'] != null) {
      selfList =
          (json['self'] as List)
              .map((item) => LinkItem.fromJson(item))
              .toList();
    }

    List<LinkItem> collectionList = [];
    if (json['collection'] != null) {
      collectionList =
          (json['collection'] as List)
              .map((item) => LinkItem.fromJson(item))
              .toList();
    }

    List<LinkItem> upList = [];
    if (json['up'] != null) {
      upList =
          (json['up'] as List).map((item) => LinkItem.fromJson(item)).toList();
    }

    return Links(self: selfList, collection: collectionList, up: upList);
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self.map((item) => item.toJson()).toList(),
      'collection': collection.map((item) => item.toJson()).toList(),
      'up': up.map((item) => item.toJson()).toList(),
    };
  }
}

class LinkItem {
  final String href;
  final TargetHints? targetHints;

  LinkItem({required this.href, this.targetHints});

  factory LinkItem.fromJson(Map<String, dynamic> json) {
    return LinkItem(
      href: json['href'] ?? '',
      targetHints:
          json['targetHints'] != null
              ? TargetHints.fromJson(json['targetHints'])
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'href': href, 'targetHints': targetHints?.toJson()};
  }
}

class TargetHints {
  final List<String> allow;

  TargetHints({required this.allow});

  factory TargetHints.fromJson(Map<String, dynamic> json) {
    List<String> allowList = [];
    if (json['allow'] != null) {
      allowList = List<String>.from(json['allow']);
    }

    return TargetHints(allow: allowList);
  }

  Map<String, dynamic> toJson() {
    return {'allow': allow};
  }
}
