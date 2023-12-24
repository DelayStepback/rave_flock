class GuestEntity {
  GuestEntity(
      {
        required this.userId,
        required this.username,
      required this.fullName,
      required this.avatarUrl,
      required this.status});

  String userId;
  String? username;
  String? fullName;
  String? avatarUrl;
  String? status;
}
