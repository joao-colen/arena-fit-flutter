import 'dart:convert';

class AdModel {
  final String title;
  final String name;
  final String profile;
  final String imagem;
  final String price;
  final String address;
  final String description;

  AdModel({
    required this.title, 
    required this.name, 
    required this.profile, 
    required this.imagem, 
    required this.price, 
    required this.address, 
    required this.description, 
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'name': name,
      'profile': profile,
      'imagem': imagem,
      'price': price,
      'address': address,
      'description': description,
    };
  }

  factory AdModel.fromMap(Map<String, dynamic> map) {
    return AdModel(
      title: map['title'],
      name: map['name'],
      profile: map['profile'],
      imagem: map['imagem'],
      price: map['price'],
      address: map['address'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AdModel.fromJson(String source) => AdModel.fromMap(json.decode(source));
}
