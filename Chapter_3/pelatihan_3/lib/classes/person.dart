class Person {
  int id;
  String name;
  String alamat;

  Person({required this.id, required this.name, required this.alamat});

  int getID(){
    return id;
  }

  String displayName(){
    return name;
  }

  String displayAlamat(){
    return alamat;
  }
}
