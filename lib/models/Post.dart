class Post {
  final String username;
  final String profileImageUrl;
  final String postImageUrl;
  final String caption;
  final int likes;
  final int comments;
  final String timeAgo;
  final String location;
  final bool isLiked;
  final String hastag;


  Post({
    required this.username,
    required this.profileImageUrl,
    required this.postImageUrl,
    required this.caption,
    required this.likes,
    required this.comments,
    required this.timeAgo,
    required this.location,
    required this.isLiked,
    required this.hastag,
  });
}