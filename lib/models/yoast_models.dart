import 'schema_models.dart';

class YoastHeadJson {
  final String title;
  final Robots robots;
  final String ogLocale;
  final String ogType;
  final String ogTitle;
  final String ogUrl;
  final String ogSiteName;
  final String twitterCard;
  final Schema schema;

  YoastHeadJson({
    required this.title,
    required this.robots,
    required this.ogLocale,
    required this.ogType,
    required this.ogTitle,
    required this.ogUrl,
    required this.ogSiteName,
    required this.twitterCard,
    required this.schema,
  });

  factory YoastHeadJson.fromJson(Map<String, dynamic> json) {
    return YoastHeadJson(
      title: json['title'] ?? '',
      robots: Robots.fromJson(json['robots'] ?? {}),
      ogLocale: json['og_locale'] ?? '',
      ogType: json['og_type'] ?? '',
      ogTitle: json['og_title'] ?? '',
      ogUrl: json['og_url'] ?? '',
      ogSiteName: json['og_site_name'] ?? '',
      twitterCard: json['twitter_card'] ?? '',
      schema: Schema.fromJson(json['schema'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'robots': robots.toJson(),
      'og_locale': ogLocale,
      'og_type': ogType,
      'og_title': ogTitle,
      'og_url': ogUrl,
      'og_site_name': ogSiteName,
      'twitter_card': twitterCard,
      'schema': schema.toJson(),
    };
  }
}

class Robots {
  final String index;
  final String follow;
  final String maxSnippet;
  final String maxImagePreview;
  final String maxVideoPreview;

  Robots({
    required this.index,
    required this.follow,
    required this.maxSnippet,
    required this.maxImagePreview,
    required this.maxVideoPreview,
  });

  factory Robots.fromJson(Map<String, dynamic> json) {
    return Robots(
      index: json['index'] ?? '',
      follow: json['follow'] ?? '',
      maxSnippet: json['max-snippet'] ?? '',
      maxImagePreview: json['max-image-preview'] ?? '',
      maxVideoPreview: json['max-video-preview'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'follow': follow,
      'max-snippet': maxSnippet,
      'max-image-preview': maxImagePreview,
      'max-video-preview': maxVideoPreview,
    };
  }
}
