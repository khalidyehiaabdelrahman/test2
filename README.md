# Flutter WordPress API Models

A Flutter project that demonstrates WordPress API integration with comprehensive data models.

## Features

- **Complete WordPress API Models**: Category, Yoast SEO, Links, and Schema.org models
- **Real FIG Data**: Integration with figeg.com WordPress API
- **JSON Serialization**: Full fromJson/toJson support for all models
- **Type Safety**: Null-safe Dart implementation
- **Modular Design**: Separate model files for better organization

## Models Included

- **Category**: Main category model with all WordPress fields
- **YoastHeadJson**: SEO data including robots, Open Graph, Twitter cards
- **Links**: API links with target hints
- **Schema**: Schema.org structured data

## Getting Started

This project demonstrates how to create comprehensive Flutter models for WordPress API responses.

### Prerequisites

- Flutter SDK
- Dart SDK

### Running the Project

```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # Main application with UI
└── models/
    ├── category.dart         # Category model
    ├── yoast_models.dart     # Yoast SEO models
    ├── links_models.dart     # Links models
    └── schema_models.dart    # Schema.org models
```

## Data Source

This project uses real data from FIG (Fashion International Group) WordPress API:
- Website: figeg.com
- API: WordPress REST API
- Data: Product categories with full SEO and Schema data
