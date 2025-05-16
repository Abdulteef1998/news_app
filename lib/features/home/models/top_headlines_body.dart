// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TopHeadlinesBody {
  final String country;
  final String? category;
  final String? source;
  final String? q;
  final int? pageSize;
  final int? page;

  const TopHeadlinesBody({
    this.country = 'us',
    this.category,
    this.source,
    this.q,
    this.pageSize,
    this.page,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': country,
      'category': category,
      'source': source,
      'q': q,
      'pageSize': pageSize,
      'page': page,
    };
  }

  factory TopHeadlinesBody.fromMap(Map<String, dynamic> map) {
    return TopHeadlinesBody(
      country: map['country'] as String,
      category: map['category'] != null ? map['category'] as String : null,
      source: map['source'] != null ? map['source'] as String : null,
      q: map['q'] != null ? map['q'] as String : null,
      pageSize: map['pageSize'] != null ? map['pageSize'] as int : null,
      page: map['page'] != null ? map['page'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TopHeadlinesBody.fromJson(String source) =>
      TopHeadlinesBody.fromMap(json.decode(source) as Map<String, dynamic>);
}
