class Person {
  String name;
  String email;
  String cell;
  String password;
  Person({
    required this.name,
    required this.email,
    required this.cell,
    required this.password,
  });
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'cell': cell,
      'email': email,
      'password': password,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      cell: map['phone'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }
}

