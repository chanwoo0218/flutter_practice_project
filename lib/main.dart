import 'package:flutter/material.dart';
import 'package:practice2/animal_page.dart';
import 'package:practice2/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  static List<String> animalImagePath = [
    'image/img.png',
    'image/img_1.png',
    'image/img_2.png',
    'image/img_3.png',
    'image/img_4.png',
    'image/img_5.png',
    'image/img_6.png',
    'image/img_7.png',
  ];

  static List<String> animalName = [
    'Bear',
    'Camel',
    'Dear',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea'
  ];

  final List<Animal> animalData = List.generate(animalLocation.length,
          (index) => Animal(animalName[index], animalLocation[index], animalImagePath[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: animalData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  animalData[index].name
                ),
                leading: SizedBox( // leading은 왼쪽에 아이콘을 넣음
                  height: 50,
                  width: 50,
                  child: Image.asset(animalData[index].imgPath),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AnimalPage(animal: animalData[index],)));
                  debugPrint(animalData[index].name);
                },
              ),
            );
          }
      ),
    );
  }
}

