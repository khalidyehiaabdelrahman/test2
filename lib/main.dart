import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/yoast_models.dart';
import 'models/links_models.dart';
import 'models/schema_models.dart' as schema;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Models Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: ModelsDemoPage(),
    );
  }
}

class ModelsDemoPage extends StatefulWidget {
  @override
  _ModelsDemoPageState createState() => _ModelsDemoPageState();
}

class _ModelsDemoPageState extends State<ModelsDemoPage> {
  late Category sampleCategory;
  late YoastHeadJson sampleYoast;
  late Links sampleLinks;
  late schema.Schema sampleSchema;

  @override
  void initState() {
    super.initState();
    _createSampleData();
  }

  void _createSampleData() {
    // استخدام البيانات الحقيقية من Response
    sampleCategory = Category(
      id: 1537,
      name: "Accessories",
      slug: "accessories",
      parent: 1500,
      description: "",
      display: "default",
      image: null,
      menuOrder: 0,
      count: 84,
      yoastHead:
          "<!-- This site is optimized with the Yoast SEO plugin v25.4 - https://yoast.com/wordpress/plugins/seo/ -->\n<title>Accessories Archives - FIG</title>\n<!-- Admin only notice: this page does not show a meta description because it does not have one, either write it for this page specifically or go into the [Yoast SEO - Settings] menu and set up a template. -->\n<meta name=\"robots\" content=\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\" />\n<meta property=\"og:locale\" content=\"en_US\" class=\"yoast-seo-meta-tag\" />\n<meta property=\"og:type\" content=\"article\" class=\"yoast-seo-meta-tag\" />\n<meta property=\"og:title\" content=\"Accessories Archives - FIG\" class=\"yoast-seo-meta-tag\" />\n<meta property=\"og:url\" content=\"https://figeg.com/category/women/accessories/\" class=\"yoast-seo-meta-tag\" />\n<meta property=\"og:site_name\" content=\"FIG\" class=\"yoast-seo-meta-tag\" />\n<meta name=\"twitter:card\" content=\"summary_large_image\" class=\"yoast-seo-meta-tag\" />\n<script type=\"application/ld+json\" class=\"yoast-schema-graph\">{\"@context\":\"https://schema.org\",\"@graph\":[{\"@type\":\"CollectionPage\",\"@id\":\"https://figeg.com/category/women/accessories/\",\"url\":\"https://figeg.com/category/women/accessories/\",\"name\":\"Accessories Archives - FIG\",\"isPartOf\":{\"@id\":\"https://figeg.com/#website\"},\"breadcrumb\":{\"@id\":\"https://figeg.com/category/women/accessories/#breadcrumb\"},\"inLanguage\":\"en-US\"},{\"@type\":\"BreadcrumbList\",\"@id\":\"https://figeg.com/category/women/accessories/#breadcrumb\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":1,\"name\":\"Home\",\"item\":\"https://figeg.com/\"},{\"@type\":\"ListItem\",\"position\":2,\"name\":\"Women\",\"item\":\"https://figeg.com/category/women/\"},{\"@type\":\"ListItem\",\"position\":3,\"name\":\"Accessories\"}]},{\"@type\":\"WebSite\",\"@id\":\"https://figeg.com/#website\",\"url\":\"https://figeg.com/\",\"name\":\"https://figeg.com/\",\"description\":\"Fashion International Group\",\"publisher\":{\"@id\":\"https://figeg.com/#organization\"},\"potentialAction\":[{\"@type\":\"SearchAction\",\"target\":{\"@type\":\"EntryPoint\",\"urlTemplate\":\"https://figeg.com/?s={search_term_string}\"},\"query-input\":{\"@type\":\"PropertyValueSpecification\",\"valueRequired\":true,\"valueName\":\"search_term_string\"}}],\"inLanguage\":\"en-US\"},{\"@type\":\"Organization\",\"@id\":\"https://figeg.com/#organization\",\"name\":\"FIG\",\"url\":\"https://figeg.com/\",\"logo\":{\"@type\":\"ImageObject\",\"inLanguage\":\"en-US\",\"@id\":\"https://figeg.com/#/schema/logo/image/\",\"url\":\"https://figeg.com/wp-content/uploads/2024/07/cropped-fig-logo.png\",\"contentUrl\":\"https://figeg.com/wp-content/uploads/2024/07/cropped-fig-logo.png\",\"width\":2100,\"height\":844,\"caption\":\"FIG\"},\"image\":{\"@id\":\"https://figeg.com/#/schema/logo/image/\"},\"sameAs\":[\"https://www.facebook.com/share/16dKrxSyQo/?mibextid=wwXIfr\",\"https://www.instagram.com/figchiceg?igsh=ZHdnbXNyZHU2Z3B1\"]}]}</script>\n<!-- / Yoast SEO plugin. -->",
      yoastHeadJson: _createRealYoast(),
      links: _createRealLinks(),
    );

    sampleYoast = _createRealYoast();
    sampleLinks = _createRealLinks();
    sampleSchema = _createRealSchema();
  }

  YoastHeadJson _createRealYoast() {
    return YoastHeadJson(
      title: "Accessories Archives - FIG",
      robots: Robots(
        index: "noindex",
        follow: "follow",
        maxSnippet: "max-snippet:-1",
        maxImagePreview: "max-image-preview:large",
        maxVideoPreview: "max-video-preview:-1",
      ),
      ogLocale: "en_US",
      ogType: "article",
      ogTitle: "Accessories Archives - FIG",
      ogUrl: "https://figeg.com/category/women/accessories/",
      ogSiteName: "FIG",
      twitterCard: "summary_large_image",
      schema: _createRealSchema(),
    );
  }

  Links _createRealLinks() {
    return Links(
      self: [
        LinkItem(
          href: "https://figeg.com/wp-json/wc/v3/products/categories/1537",
          targetHints: TargetHints(
            allow: ["GET", "POST", "PUT", "PATCH", "DELETE"],
          ),
        ),
      ],
      collection: [
        LinkItem(
          href: "https://figeg.com/wp-json/wc/v3/products/categories",
          targetHints: null,
        ),
      ],
      up: [
        LinkItem(
          href: "https://figeg.com/wp-json/wc/v3/products/categories/1500",
          targetHints: null,
        ),
      ],
    );
  }

  schema.Schema _createRealSchema() {
    return schema.Schema(
      context: "https://schema.org",
      graph: [
        schema.GraphItem(
          type: "CollectionPage",
          id: "https://figeg.com/category/women/accessories/",
          url: "https://figeg.com/category/women/accessories/",
          name: "Accessories Archives - FIG",
          isPartOf: schema.IsPartOf(id: "https://figeg.com/#website"),
          breadcrumb: schema.Breadcrumb(
            id: "https://figeg.com/category/women/accessories/#breadcrumb",
          ),
          inLanguage: "en-US",
        ),
        schema.GraphItem(
          type: "BreadcrumbList",
          id: "https://figeg.com/category/women/accessories/#breadcrumb",
          itemListElement: [
            schema.ItemListElement(
              type: "ListItem",
              position: 1,
              name: "Home",
              item: "https://figeg.com/",
            ),
            schema.ItemListElement(
              type: "ListItem",
              position: 2,
              name: "Women",
              item: "https://figeg.com/category/women/",
            ),
            schema.ItemListElement(
              type: "ListItem",
              position: 3,
              name: "Accessories",
            ),
          ],
        ),
        schema.GraphItem(
          type: "WebSite",
          id: "https://figeg.com/#website",
          url: "https://figeg.com/",
          name: "https://figeg.com/",
          description: "Fashion International Group",
          publisher: schema.Publisher(id: "https://figeg.com/#organization"),
          potentialAction: [
            schema.PotentialAction(
              type: "SearchAction",
              target: schema.Target(
                type: "EntryPoint",
                urlTemplate: "https://figeg.com/?s={search_term_string}",
              ),
              queryInput: schema.QueryInput(
                type: "PropertyValueSpecification",
                valueRequired: true,
                valueName: "search_term_string",
              ),
            ),
          ],
          inLanguage: "en-US",
        ),
        schema.GraphItem(
          type: "Organization",
          id: "https://figeg.com/#organization",
          name: "FIG",
          url: "https://figeg.com/",
          logo: schema.Logo(
            type: "ImageObject",
            inLanguage: "en-US",
            id: "https://figeg.com/#/schema/logo/image/",
            url:
                "https://figeg.com/wp-content/uploads/2024/07/cropped-fig-logo.png",
            contentUrl:
                "https://figeg.com/wp-content/uploads/2024/07/cropped-fig-logo.png",
            width: 2100,
            height: 844,
            caption: "FIG",
          ),
          image: schema.Image(id: "https://figeg.com/#/schema/logo/image/"),
          sameAs: [
            "https://www.facebook.com/share/16dKrxSyQo/?mibextid=wwXIfr",
            "https://www.instagram.com/figchiceg?igsh=ZHdnbXNyZHU2Z3B1",
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عرض بيانات النماذج'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategoryCard(),
            SizedBox(height: 16),
            _buildYoastCard(),
            SizedBox(height: 16),
            _buildLinksCard(),
            SizedBox(height: 16),
            _buildSchemaCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'بيانات الفئة (Category)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            _buildInfoRow('ID', sampleCategory.id.toString()),
            _buildInfoRow('الاسم', sampleCategory.name),
            _buildInfoRow('الرابط', sampleCategory.slug),
            _buildInfoRow('الوصف', sampleCategory.description),
            _buildInfoRow('عدد المقالات', sampleCategory.count.toString()),
            _buildInfoRow('الصورة', sampleCategory.image ?? 'لا توجد صورة'),
          ],
        ),
      ),
    );
  }

  Widget _buildYoastCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'بيانات Yoast SEO',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            _buildInfoRow('العنوان', sampleYoast.title),
            _buildInfoRow('نوع Open Graph', sampleYoast.ogType),
            _buildInfoRow('عنوان Open Graph', sampleYoast.ogTitle),
            _buildInfoRow('اسم الموقع', sampleYoast.ogSiteName),
            _buildInfoRow('بطاقة Twitter', sampleYoast.twitterCard),
            _buildInfoRow('فهرسة محركات البحث', sampleYoast.robots.index),
            _buildInfoRow('متابعة الروابط', sampleYoast.robots.follow),
          ],
        ),
      ),
    );
  }

  Widget _buildLinksCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'بيانات الروابط (Links)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text('روابط Self:', style: TextStyle(fontWeight: FontWeight.w600)),
            ...sampleLinks.self.map(
              (link) => Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text('• ${link.href}', style: TextStyle(fontSize: 12)),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'روابط Collection:',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            ...sampleLinks.collection.map(
              (link) => Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text('• ${link.href}', style: TextStyle(fontSize: 12)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSchemaCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'بيانات Schema.org',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            _buildInfoRow('السياق', sampleSchema.context),
            _buildInfoRow('عدد العناصر', sampleSchema.graph.length.toString()),
            if (sampleSchema.graph.isNotEmpty) ...[
              SizedBox(height: 8),
              Text(
                'العنصر الأول:',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('النوع: ${sampleSchema.graph.first.type}'),
                    Text('المعرف: ${sampleSchema.graph.first.id}'),
                    if (sampleSchema.graph.first.name != null)
                      Text('الاسم: ${sampleSchema.graph.first.name}'),
                    if (sampleSchema.graph.first.description != null)
                      Text('الوصف: ${sampleSchema.graph.first.description}'),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(value, style: TextStyle(color: Colors.grey[700])),
          ),
        ],
      ),
    );
  }
}
