class UserEntity {
  final String uid;
  final String firstName;
  final String lastName;
  final String email;
  final String image;

  const UserEntity({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
  });

  UserEntity copyWith({
    String? uid,
    String? firstName,
    String? lastName,
    String? email,
    String? image,
  }) {
    return UserEntity(
      uid: uid ?? this.uid,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      image: image ?? this.image,
    );
  }
}
