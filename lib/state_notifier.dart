import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  String userName;
  int age;
  String title;
  User({
    required this.userName,
    required this.age,
    required this.title,
  });

  User copyWith({
    String? userName,
    int? age,
    String? title,
  }) {
    return User(
      userName: userName ?? this.userName,
      age: age ?? this.age,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'userName': userName});
    result.addAll({'age': age});
    result.addAll({'title': title});
  
    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userName: map['userName'] ?? '',
      age: map['age']?.toInt() ?? 0,
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(userName: $userName, age: $age, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.userName == userName &&
      other.age == age &&
      other.title == title;
  }

  @override
  int get hashCode => userName.hashCode ^ age.hashCode ^ title.hashCode;
}

class ExampleOfSN extends StateNotifier<User> {
  ExampleOfSN(super._state);

  void updateData(String n, int a,String t) {
    // User(userName: n, age: a);
    state = state.copyWith(
        userName: n, age: a,title: t); //Here only required values can be passed
  }
}
