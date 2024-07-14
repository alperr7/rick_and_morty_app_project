import 'package:flutter/material.dart';
import 'package:rickandmorty_project/character_pages.dart';

class CaracterPage extends StatefulWidget {
  const CaracterPage({super.key});

  @override
  State<CaracterPage> createState() => _CaracterPageState();
}

class _CaracterPageState extends State<CaracterPage> {
  final List<Character> characters = [
    Character(
      name: "BethSmith",
      imagePath: "assets/images/Beth.png",
      status: "Alive",
      species: "Human",
      gender: "Female",
      origin: "Earth (C-137)",
      location: "Earth (C-137)",
      episodes: [1, 2, 3, 4, 5, 6, 22, 51],
      created: "5 May 2017, 09:48:46",
    ),
    Character(
      name: "Bill",
      imagePath: "assets/images/images3.png",
      status: "Alive",
      species: "Unknown",
      gender: "Male",
      origin: "Unknown",
      location: "Unknown",
      episodes: [10, 20, 30],
      created: "1 Jan 2000, 12:00:00",
    ),
    Character(
      name: "Conroy",
      imagePath: "assets/images/soru.png",
      status: "Alive",
      species: "Human",
      gender: "Male",
      origin: "Earth",
      location: "Earth",
      episodes: [7, 14, 21],
      created: "3 Mar 2015, 15:30:00",
    ),
    Character(
      name: "Cronenberg Rick",
      imagePath: "assets/images/images5.png",
      status: "Alive",
      species: "Cronenberg",
      gender: "Male",
      origin: "Cronenberg Earth",
      location: "Cronenberg Earth",
      episodes: [5, 10, 15],
      created: "7 Jul 2022, 18:00:00",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/images.png",
          height: 70,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                String text = "";
                if (index == 0) {
                  text = "Earth (C-137)";
                } else if (index == 1) {
                  text = "Abadango";
                } else if (index == 2) {
                  text = "Citadel";
                }
                return Container(
                  width: 150,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.white : Colors.grey,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailPage(
                      character: characters[0],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset("assets/images/images2.png",
                        height: 150, width: 90),
                    SizedBox(width: 10),
                    Image.asset("assets/images/female.png",
                        height: 150, width: 90, fit: BoxFit.cover),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Beth Smith",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailPage(
                      character: characters[1],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bill",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: 90),
                    Image.asset("assets/images/maleicon.png",
                        height: 150, width: 60),
                    SizedBox(width: 30),
                    Image.asset("assets/images/images3.png",
                        height: 100, width: 90, fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailPage(
                      character: characters[2],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset("assets/images/images4.png",
                        height: 150, width: 90),
                    SizedBox(width: 10),
                    Image.asset("assets/images/soru.png",
                        height: 150, width: 90, fit: BoxFit.cover),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Conroy",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GestureDetector(
              onTap: () {
                characters[3].imageDetailPath = "assets/images/images4.png";
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailPage(
                      character: characters[3],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cronenberg",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rick",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Image.asset("assets/images/maleicon.png",
                        height: 150, width: 60),
                    SizedBox(width: 30),
                    Image.asset("assets/images/images5.png",
                        height: 100, width: 90, fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
