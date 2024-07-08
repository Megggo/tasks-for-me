//task  1,2

void main() {
  Book book1 = Book(title: 'Arabic', author: 'Ahmed', numPage: 100);
  book1.display();
  print('');
  Novel novel1 =
      Novel(title: 'Math', author: 'omar', numPage: 200, genre: 'scince');
  novel1.display();
}

 class Book {
  String? title;
  String? author;
  int? numPage;
  Book({required this.title, required this.author, required this.numPage});
  display() {
    print('Book Title is : $title');
    print('Book author is : $author');
    print('Number Of Pages : $numPage');
  }
}

class Novel extends Book {
  String? genre;

  Novel(
      {required super.title,
      required super.author,
      required super.numPage,
      required this.genre});
  @override
  display() {
    print('Book Title is : $title');
    print('Book author is : $author');
    print('Number Of Pages : $numPage');
    print('genre : $genre');
  }
}
