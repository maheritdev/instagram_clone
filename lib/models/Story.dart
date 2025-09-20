class Story {
  final String username;
  final String profileImageUrl;
  final List<String> storyImages;
  final bool isViewed;
  final bool isLive;

  Story({
    required this.username,
    required this.profileImageUrl,
    required this.storyImages,
    this.isViewed = false,
    this.isLive = false,
  });
}
