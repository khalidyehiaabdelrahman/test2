import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/yoast_models.dart';
import 'models/links_models.dart';
import 'models/schema_models.dart';

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
  late Schema sampleSchema;

  @override
  void initState() {
    super.initState();
    _createSampleData();
  }

  void _createSampleData() {
    // إنشاء بيانات تجريبية للفئة
    sampleCategory = Category(
      id: 1,
      name: "التكنولوجيا",
      slug: "technology",
      parent: 0,
      description: "فئة خاصة بأخبار التكنولوجيا والابتكارات",
      display: "default",
      image: "https://example.com/tech.jpg",
      menuOrder: 1,
      count: 25,
      yoastHead: "<meta name='description' content='أخبار التكنولوجيا'>",
      yoastHeadJson: _createSampleYoast(),
      links: _createSampleLinks(),
    );

    sampleYoast = _createSampleYoast();
    sampleLinks = _createSampleLinks();
    sampleSchema = _createSampleSchema();
  }

  YoastHeadJson _createSampleYoast() {
    return YoastHeadJson(
      title: "التكنولوجيا - موقع الأخبار",
      robots: Robots(
        index: "index",
        follow: "follow",
        maxSnippet: "max-snippet:-1",
        maxImagePreview: "max-image-preview:large",
        maxVideoPreview: "max-video-preview:-1",
      ),
      ogLocale: "ar_SA",
      ogType: "website",
      ogTitle: "التكنولوجيا - موقع الأخبار",
      ogUrl: "https://example.com/category/technology",
      ogSiteName: "موقع الأخبار",
      twitterCard: "summary_large_image",
      schema: _createSampleSchema(),
    );
  }

  Links _createSampleLinks() {
    return Links(
      self: [
        LinkItem(
          href: "https://example.com/wp-json/wp/v2/categories/1",
          targetHints: TargetHints(allow: ["GET"]),
        ),
      ],
      collection: [
        LinkItem(
          href: "https://example.com/wp-json/wp/v2/categories",
          targetHints: TargetHints(allow: ["GET"]),
        ),
      ],
      up: [
        LinkItem(
          href: "https://example.com/wp-json/wp/v2/categories",
          targetHints: TargetHints(allow: ["GET"]),
        ),
      ],
    );
  }

  Schema _createSampleSchema() {
    return Schema(
      context: "https://schema.org",
      graph: [
        GraphItem(
          type: "WebSite",
          id: "https://example.com/#website",
          url: "https://example.com",
          name: "موقع الأخبار",
          description: "موقع إخباري شامل",
          publisher: Publisher(id: "https://example.com/#organization"),
          potentialAction: [
            PotentialAction(
              type: "SearchAction",
              target: Target(
                type: "EntryPoint",
                urlTemplate: "https://example.com/?s={search_term_string}",
              ),
              queryInput: QueryInput(
                type: "PropertyValueSpecification",
                valueRequired: true,
                valueName: "search_term_string",
              ),
            ),
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
