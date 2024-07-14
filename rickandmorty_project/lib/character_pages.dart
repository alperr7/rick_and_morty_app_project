import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String status;
  final String species;
  final String gender;
  final String origin;
  final String location;
  final List<int> episodes;
  final String created;
  String? imageDetailPath;

  Character({
    required this.name,
    required this.imagePath,
    required this.status,
    required this.species,
    required this.gender,
    required this.origin,
    required this.location,
    required this.episodes,
    required this.created,
    this.imageDetailPath,
  });
}

class CharacterDetailPage extends StatelessWidget {
  final Character character;

  CharacterDetailPage({required this.character});

  String getImagePath(Character character) {
    // Karakterin durumuna bağlı olarak resmi dinamik olarak değiştir
    if (character.name == "BethSmith") {
      return "assets/images/Beth.png";
    } else if (character.name == "Bill") {
      return "assets/images/images3.png";
    } else if (character.name == "Conroy") {
      return "assets/images/images4.png";
    } else if (character.name == "Cronenberg Rick") {
      return "assets/images/images5.png";
    } else {
      // Varsayılan olarak bir resim döndürülebilir
      return "assets/images/default.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    // Dinamik olarak resim yolu alınıyor
    String imagePath = getImagePath(character);

    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                imagePath,
                height: 500,
                width: 400,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Status: ${character.status}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Species: ${character.species}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Gender: ${character.gender}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Origin: ${character.origin}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Location: ${character.location}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Episodes: ${character.episodes.join(", ")}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Created: ${character.created}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
