class GuestEntity {
  GuestEntity(
      {
        required this.userId,
        required this.username,
      required this.nickname,
      required this.avatarUrl,
      required this.status});

  String userId;
  String? username;
  String? nickname;
  String? avatarUrl;
  String? status;
}
