
class Animal{
  final String name; // 전달 받은 데이터에 따라서 여기에서 각각 다른 동물들이 생성될 것이기 때문에 앱이 실행될 때 변하지 않는 상수가 되기 때문
  final String imgPath;
  final String location;

  Animal(this.name, this.location, this.imgPath);
}