class Schema {
  final String context;
  final List<GraphItem> graph;

  Schema({required this.context, required this.graph});

  factory Schema.fromJson(Map<String, dynamic> json) {
    List<GraphItem> graphList = [];
    if (json['@graph'] != null) {
      graphList =
          (json['@graph'] as List)
              .map((item) => GraphItem.fromJson(item))
              .toList();
    }

    return Schema(context: json['@context'] ?? '', graph: graphList);
  }

  Map<String, dynamic> toJson() {
    return {
      '@context': context,
      '@graph': graph.map((item) => item.toJson()).toList(),
    };
  }
}

class GraphItem {
  final String type;
  final String id;
  final String? url;
  final String? name;
  final IsPartOf? isPartOf;
  final Breadcrumb? breadcrumb;
  final String? inLanguage;
  final List<ItemListElement>? itemListElement;
  final String? description;
  final Publisher? publisher;
  final List<PotentialAction>? potentialAction;
  final Logo? logo;
  final Image? image;
  final List<String>? sameAs;

  GraphItem({
    required this.type,
    required this.id,
    this.url,
    this.name,
    this.isPartOf,
    this.breadcrumb,
    this.inLanguage,
    this.itemListElement,
    this.description,
    this.publisher,
    this.potentialAction,
    this.logo,
    this.image,
    this.sameAs,
  });

  factory GraphItem.fromJson(Map<String, dynamic> json) {
    List<ItemListElement>? itemList;
    if (json['itemListElement'] != null) {
      itemList =
          (json['itemListElement'] as List)
              .map((item) => ItemListElement.fromJson(item))
              .toList();
    }

    List<PotentialAction>? actions;
    if (json['potentialAction'] != null) {
      actions =
          (json['potentialAction'] as List)
              .map((action) => PotentialAction.fromJson(action))
              .toList();
    }

    List<String>? sameAsList;
    if (json['sameAs'] != null) {
      sameAsList = List<String>.from(json['sameAs']);
    }

    return GraphItem(
      type: json['@type'] ?? '',
      id: json['@id'] ?? '',
      url: json['url'],
      name: json['name'],
      isPartOf:
          json['isPartOf'] != null ? IsPartOf.fromJson(json['isPartOf']) : null,
      breadcrumb:
          json['breadcrumb'] != null
              ? Breadcrumb.fromJson(json['breadcrumb'])
              : null,
      inLanguage: json['inLanguage'],
      itemListElement: itemList,
      description: json['description'],
      publisher:
          json['publisher'] != null
              ? Publisher.fromJson(json['publisher'])
              : null,
      potentialAction: actions,
      logo: json['logo'] != null ? Logo.fromJson(json['logo']) : null,
      image: json['image'] != null ? Image.fromJson(json['image']) : null,
      sameAs: sameAsList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '@type': type,
      '@id': id,
      'url': url,
      'name': name,
      'isPartOf': isPartOf?.toJson(),
      'breadcrumb': breadcrumb?.toJson(),
      'inLanguage': inLanguage,
      'itemListElement': itemListElement?.map((item) => item.toJson()).toList(),
      'description': description,
      'publisher': publisher?.toJson(),
      'potentialAction':
          potentialAction?.map((action) => action.toJson()).toList(),
      'logo': logo?.toJson(),
      'image': image?.toJson(),
      'sameAs': sameAs,
    };
  }
}

class IsPartOf {
  final String id;

  IsPartOf({required this.id});

  factory IsPartOf.fromJson(Map<String, dynamic> json) {
    return IsPartOf(id: json['@id'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'@id': id};
  }
}

class Breadcrumb {
  final String id;

  Breadcrumb({required this.id});

  factory Breadcrumb.fromJson(Map<String, dynamic> json) {
    return Breadcrumb(id: json['@id'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'@id': id};
  }
}

class ItemListElement {
  final String type;
  final int position;
  final String name;
  final String? item;

  ItemListElement({
    required this.type,
    required this.position,
    required this.name,
    this.item,
  });

  factory ItemListElement.fromJson(Map<String, dynamic> json) {
    return ItemListElement(
      type: json['@type'] ?? '',
      position: json['position'] ?? 0,
      name: json['name'] ?? '',
      item: json['item'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'@type': type, 'position': position, 'name': name, 'item': item};
  }
}

class Publisher {
  final String id;

  Publisher({required this.id});

  factory Publisher.fromJson(Map<String, dynamic> json) {
    return Publisher(id: json['@id'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'@id': id};
  }
}

class PotentialAction {
  final String type;
  final Target target;
  final QueryInput queryInput;

  PotentialAction({
    required this.type,
    required this.target,
    required this.queryInput,
  });

  factory PotentialAction.fromJson(Map<String, dynamic> json) {
    return PotentialAction(
      type: json['@type'] ?? '',
      target: Target.fromJson(json['target'] ?? {}),
      queryInput: QueryInput.fromJson(json['query-input'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '@type': type,
      'target': target.toJson(),
      'query-input': queryInput.toJson(),
    };
  }
}

class Target {
  final String type;
  final String urlTemplate;

  Target({required this.type, required this.urlTemplate});

  factory Target.fromJson(Map<String, dynamic> json) {
    return Target(
      type: json['@type'] ?? '',
      urlTemplate: json['urlTemplate'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'@type': type, 'urlTemplate': urlTemplate};
  }
}

class QueryInput {
  final String type;
  final bool valueRequired;
  final String valueName;

  QueryInput({
    required this.type,
    required this.valueRequired,
    required this.valueName,
  });

  factory QueryInput.fromJson(Map<String, dynamic> json) {
    return QueryInput(
      type: json['@type'] ?? '',
      valueRequired: json['valueRequired'] ?? false,
      valueName: json['valueName'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '@type': type,
      'valueRequired': valueRequired,
      'valueName': valueName,
    };
  }
}

class Logo {
  final String type;
  final String inLanguage;
  final String id;
  final String url;
  final String contentUrl;
  final int width;
  final int height;
  final String caption;

  Logo({
    required this.type,
    required this.inLanguage,
    required this.id,
    required this.url,
    required this.contentUrl,
    required this.width,
    required this.height,
    required this.caption,
  });

  factory Logo.fromJson(Map<String, dynamic> json) {
    return Logo(
      type: json['@type'] ?? '',
      inLanguage: json['inLanguage'] ?? '',
      id: json['@id'] ?? '',
      url: json['url'] ?? '',
      contentUrl: json['contentUrl'] ?? '',
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      caption: json['caption'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '@type': type,
      'inLanguage': inLanguage,
      '@id': id,
      'url': url,
      'contentUrl': contentUrl,
      'width': width,
      'height': height,
      'caption': caption,
    };
  }
}

class Image {
  final String id;

  Image({required this.id});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(id: json['@id'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'@id': id};
  }
}
