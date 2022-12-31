class User {
   String? id;
   String? email;
   String? password;

  User({this.id, this.email, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> user = Map<String, dynamic>();
    user["id"] = id;
    user["email"] = this.email;
    user["password"] = this.password;
    return user;
  }
}

