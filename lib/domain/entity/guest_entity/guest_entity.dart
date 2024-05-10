class GuestEntity {
  GuestEntity(
      {required this.userId,
      required this.username,
      required this.fullName,
      required this.avatarUrl,
      required this.status});

  String userId;
  String? username;
  String? fullName;
  String? avatarUrl;
  String? status;

  GuestEntity copywith({String? userId, String? username, String? fullName, String? avatarUrl, String? status}) {
    return GuestEntity(
        userId: userId ?? this.userId,
        username: username ?? this.username,
        fullName: fullName ?? this.fullName,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        status: status ?? this.status);
  }
}
