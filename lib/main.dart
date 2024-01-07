import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  var titleList = [
    "Dentist",
    "Pharmacist",
    "School teacher",
    "IT manager",
    "Account",
    "Lawyer",
    "Hairdresser",
    "Physician",
    "Web developer",
    "Medical Secretary"
  ];

  var imageList = [
    'image/img.png',
    'image/img_1.png',
    'image/img_2.png',
    'image/img_3.png',
    'image/img_4.png',
    'image/img_5.png',
    'image/img_6.png',
    'image/img_7.png',
    'image/img_8.png',
    'image/img_9.png',
  ];

  var description = [
    '1. There are different types of careers you can pursue in your life. Which one will it be?',
    '2. There are different types of careers you can pursue in your life. Which one will it be?',
    '3. There are different types of careers you can pursue in your life. Which one will it be?',
    '4. There are different types of careers you can pursue in your life. Which one will it be?',
    '5. There are different types of careers you can pursue in your life. Which one will it be?',
    '6. There are different types of careers you can pursue in your life. Which one will it be?',
    '7. There are different types of careers you can pursue in your life. Which one will it be?',
    '8. There are different types of careers you can pursue in your life. Which one will it be?',
    '9. There are different types of careers you can pursue in your life. Which one will it be?',
    '10. There are different types of careers you can pursue in your life. Which one will it be?',
  ];

  void showPopup(context, title, image, description){
    showDialog(context: context,
        builder: (context){
      return Dialog(
        child: Container(
          width: MediaQuery.of(context).size.width*0.7,
          height: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
          ),
          child: Column(
            children: [
              ClipRRect( // 이미지를 사각형 모양으로 출력해주는 위젯
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  width: 200,
                  height: 200,
                ), // showPopup 메소드의 인자값
              ),
              const SizedBox(
                  height: 10
              ),
              Text(title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),),
              Padding(padding: const EdgeInsets.all(8),
              child: Text(
                description,
                maxLines: 3, // description 알규먼트가 최대 몇줄까지 보여질 것인지
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[500]
                ),
                textAlign: TextAlign.center,
              ),),
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                label: const Text('close'),
              )
            ],
          ),
        ),
      );
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView',
        style: TextStyle(
            color: Colors.grey
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: titleList.length, // 몇개의 리스트 아이템이 보여질지 지정
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                debugPrint(titleList[index]);
                showPopup(context, titleList[index], imageList[index], description[index]);
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(imageList[index]),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(titleList[index],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: width,
                          child: Text(description[index],
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500]
                            ),
                          ),
                        )

                      ],
                    ),),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}



