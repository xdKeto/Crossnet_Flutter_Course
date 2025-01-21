class Person {
  int id;
  String name;
  String alamat;

  Person({required this.id, required this.name, required this.alamat});

  String displayName(){
    return this.name;
  }
}
