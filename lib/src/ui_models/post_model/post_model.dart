class PostModel{
  String profile;
  String name;
  String? username;
  String? city;
  String post;
  String postPicture;
  int likes;
  int likes2;
  int comments;
  int hour;

  PostModel({
    required this.profile,required this.name,required this.post,
    required this.postPicture,
    this.username,
    this.city,
    required this.likes,required this.likes2,
    required this.comments,required this.hour,
});
}