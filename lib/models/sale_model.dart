
class SaleModel {
  final String title;
  final double price;

  SaleModel({required this.title, required this.price});

  factory SaleModel.fromJson(Map<String, dynamic> json) => SaleModel(
        title: json['title'],
        price: json['price'],
      );
}