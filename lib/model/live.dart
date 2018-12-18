import 'package:meta/meta.dart';

class Live {
  final String id;
  final String title;
  final String views;
  Live({
    @required this.id,
    @required this.title,
    @required this.views
  });

  fromJson(Map<String, dynamic> json) {
    return new Live(
      id: json['id'],
      title: json['title'],
      views: json['views']
    );
  }

  bool operator ==(Object other) => 
    identical(this, other) ||
    other is Live && id == other.id && title == other.title && views == other.views;

  int get hashCode => id.hashCode ^ title.hashCode ^ views.hashCode;
}