import 'dart:ffi';

void main(){
//Задача№1
ACar car=ACar(brand: "bmw", year: 2004,model: "bmw1");
car.description();

//Задача2
Apple apple=Apple(name: "Яблоко", taste1: "вкусное");
apple.taste();

//Задвчв №3
Dog dog=Dog(name: "Mark", age: 12);
dog.voice();

//Задача№4
Product cream=Product(name:"крем", price: 300);
cream.descriptions();

//Задача№5
Circle circle=Circle(color: "dfghj", a: 5, pi: 3.14);
print(circle.square);
circle.square1();


//Задача№6
Manager masha=Manager(name: "Маша", salary: 40000);
masha.information();

//Задача№7
House house=House(address: "ул.Мира15а");
house.buildingType();


//Задача№8
Carrot carrot=Carrot(name: "carrot", color1: "оранжевый");
carrot.color();

//Задача№9
Guitar guitar=Guitar(name: "guitar", sound1: "слабый");
guitar.sound();

//Задача№10
Human luna=Human(name: "luna", age: 19);
luna.greetings();
}
//Задача№1
class Car{
  String brand;
  int year;
  Car({required this.brand,required this.year});
  void description(){
   print("$brand,$year");
  }
}
class ACar extends Car{
  String model;
ACar({required super.brand,required super.year,required this.model});
@override
  void description(){
   print("$brand,$year,$model");
}
}
 

//Задача№2
class Fruit{
  String name;
 Fruit({required this.name});
  void taste() {
    print('$name сладкое');
  }
}
class Apple extends Fruit{
  String taste1;
  Apple({required super.name,required this.taste1});
@override
 void taste(){
    print("$name очень $taste1");
 }
}

//Задача№3
class Animals{
  String name;
  int age;
  Animals({required this.name,required this.age});

  void voice(){
   print("Какой звук издает $name ");
  }
}
class Dog extends Animals{
  Dog({required super.name,required super.age});
  @override
  void voice(){
   print("$name очень громко рычит");
  }
}

//Задача№4
class Goods{
  String name;
  int  price;
 Goods({required this.name,required this.price});
void descriptions(){
print("Описание продукта");
}
}
class Product extends Goods{
Product({required super.name,required super.price});
@override
void descriptions(){
print("Название:$name,цена:$price сом");
}
}

//Задача№5
 class Figure{
String color;
double square;
Figure ({this.square=0.0,required this.color});
void square1(){
  print("Вычислить площадь");
}
}
class Circle extends Figure{
  Circle({required super.color,required this.a,required this.pi, super.square});
  double a;
  double pi;
 
@override
  void square1(){
  double square=pi*a*a;
  print("$square");
}
}



//Задача№6

class Employee{
String name;
int salary;

Employee({required this.name,required this.salary});
void information(){
  print("Вывести информацию");
}
}

class Manager extends Employee{
Manager({required super.name,required super.salary});
@override
void information(){
  print("Имя:$name,зарплата:$salary сом");
}
}

//Задача№7
class Building{
  String address;
  Building({required this.address});
  void buildingType(){
    print("Какой тип здания");
  }
}
class House extends Building{
  House({required super.address});
@override
void buildingType(){
  print("Тип здания:дом");
}
}

//Задача№8
class Vegetable{
  String name;
  Vegetable({required this.name});
  void color(){
    print("Какой цвет");
  }
}
class Carrot extends Vegetable{
  String color1;
  Carrot({required super.name,required this.color1});
  @override
  void color(){
    print("Цвет овоща:$color1");
  }
}

//Задача№9
class MusicalInstrument{
  String name;
  MusicalInstrument({required this.name});
  void sound(){
    print("Какой звук");
  }
}
class Guitar extends MusicalInstrument{
  String sound1;
  Guitar({required super.name,required this.sound1});
  @override
  void sound(){
    print("Гитара издает $sound1 звук");
  }
}

//Задача№10
class Organism{
  String name;
  Organism({required this.name});
  void greetings(){
    print("Приветствие");
  }
}
class Human extends Organism{
  int age;
  Human({required super.name,required this.age});
  @override
  void greetings(){
    print("Всем привет!\n Меня зовут $name,мне $age");
  }
}