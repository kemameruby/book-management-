class Book {
  final String? price;
  final int? totalRatings;
  final String? title;
  final String? id;
  final String? category;

  Book({
    this.price,
    this.totalRatings,
    this.title,
    this.id,
    this.category,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      price: json['price'],
      totalRatings: json['totalRatings'],
      title: json['title'],
      id: json['id'],
      category: json['category'],
    );
  }
}
