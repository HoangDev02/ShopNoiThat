class User {
  String? id;
  String? email;
  String? password;
  User({this.id, this.email, this.password});

  // User({this.fullName, this.username, this.password});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['id'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
    );
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      'email': email,
      'password': password,
    };
    return map;
  }
}