// Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another), 
//который возвращает расстояние от данной точки до точки в параметре. 
//По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и 
//возвращающий площадь треугольника, который образуют данные точки. 
//Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, 
//и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1],
// которая определяет единичный вектор).

import "dart:math";

class Point { 
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  factory Point.eigen() {
    return Point(1,1,1);
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  double distanceTo(Point another){
    num distance = pow(pow((x-another.x), 2) + pow((y-another.y), 2) + pow((z-another.z), 2), 0.5);
    return distance.toDouble();
  }
}

void runner() {
  Point initialPoint = Point(0, 0, 0);
  Point eigen = Point.eigen();
  Point anotherPoint = Point(2, 3, 4);
  print("Distance is ${initialPoint.distanceTo(anotherPoint)}");
  print("Eigen factory ${eigen.x}, ${eigen.y}, ${eigen.z}");
  print("Coordinates origin ${eigen.x}, ${eigen.y}, ${eigen.z}");
}
