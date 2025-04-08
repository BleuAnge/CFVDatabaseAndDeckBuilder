abstract class CardModel {
  final int cardNumber;
  final List<String>? sets;
  final String name;
  final String? nation;
  final String? clan;
  final int? grade;
  final String? flavor;
  final String? series;
  final String? imageUrl;
  final String? effect;

  CardModel({
    required this.cardNumber, 
    this.sets, 
    required this.name, 
    this.nation, 
    this.clan, 
    this.grade, 
    this.flavor, 
    this.series, 
    this.imageUrl, 
    this.effect
  });
}