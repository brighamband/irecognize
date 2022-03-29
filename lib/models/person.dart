class Person {
  String? name;
  String? imageUrl;

  Person(this.name, this.imageUrl);

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'].first + ' ' + json['name'].last;
    // imageUrl = json['imageUrl'];
  }
}
