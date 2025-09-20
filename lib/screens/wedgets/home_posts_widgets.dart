import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/constant/Appcolors.dart';
import 'package:instagram_clone/models/Post.dart';

class HomePostsWidgets extends StatelessWidget {
  final List<Post> posts;

  const HomePostsWidgets({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: posts.length + 1,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network(
                              posts[index].profileImageUrl,
                              height: 35,
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  posts[index].username,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.verified,
                                    size: 15,
                                    color: Appcolors.VerifiedColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              posts[index].location,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
                Image.network(
                  posts[index].postImageUrl,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        CupertinoIcons.heart,
                        size: 23,
                        color: posts[index].isLiked ? Colors.red : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        "assets/images/comment_icon.png",
                        height: 23,
                        width: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        "assets/images/messages_icon.png",
                        height: 23,
                        width: 23,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(CupertinoIcons.bookmark, size: 23),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          posts[index].profileImageUrl,
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("Liked by "),
                    Text(
                      posts[index].username,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(" and "),
                    Text(
                      "${posts[index].likes} others",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                "${posts[index].username} : ${posts[index].caption}"
                                ),
                            ),
                          ],
                        ),
                        Text(posts[index].hastag,
                            style: TextStyle(color: Colors.lightBlue)),
                        Text(posts[index].location),
                        Text(posts[index].timeAgo),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("View all ${posts[index].comments} comments "),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
