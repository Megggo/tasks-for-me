void main() {
  Circle c1 = Circle(r: 5);
  c1.area(); 

  print('');

  Rectangle r1 = Rectangle(l: 10, w: 15);
  r1.area();
}

abstract class Shape {
  void area(); 
}

class Circle extends Shape {
  double? r;

  Circle({required this.r});

  @override
  void area() {
    double result = 3.14159 * r! * r!;
    print('Area of circle is $result');
  }
}

class Rectangle extends Shape {
  double? l;
  double? w;

  Rectangle({required this.l, required this.w});

  @override
  void area() {
    double result = l! * w!; 
    print('Area of rectangle is $result');
  }
}
