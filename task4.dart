void main() {
  User user = User(id: 1, username: 'john_doe', email: 'john@example.com');
  print(user.toJson()); 

  Product product = Product(id: 'p001', name: 'Smartphone', price: 599.99);
  print(product.toJson()); 

  Map<String, num> ages = {'ahmed': 20, 'samy': 19};
  print(ages['ahmed']);
  Map<int, int> numberOfSeats = {1: 500, 2: 50, 3: 700};
  numberOfSeats[4] = 800;
  print(numberOfSeats[1]);
   print(numberOfSeats);
}

class Serializable {
  Map<String, dynamic> toJson() {
    return {};
  }
}

class User extends Serializable {
  int id;
  String username;
  String email;

  User({required this.id, required this.username, required this.email});

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
    };
  }
}

class Product extends Serializable {
  String id;
  String name;
  double price;

  Product({required this.id, required this.name, required this.price});

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }
}

