import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/constant/Appcolors.dart';
import 'package:instagram_clone/screens/messages_screen.dart';
import 'package:instagram_clone/screens/wedgets/stories_wedgit.dart';

import '../models/Post.dart';
import '../models/Story.dart';
import 'wedgets/home_posts_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Story> stories = [
    Story(
      username: "XX-oo",
      profileImageUrl:
          "https://plus.unsplash.com/premium_photo-1755105197531-cfa38d566b8c?q=80&w=1175&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      storyImages: ["https://picsum.photos/400"],
      isViewed: false,
    ),
    Story(
      username: "user1",
      profileImageUrl: "https://plus.unsplash.com/premium_photo-1755938644663-3d697c1b6eb0?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      storyImages: ["https://picsum.photos/401", "https://picsum.photos/402"],
      isViewed: false,
    ),
    Story(
      username: "user2",
      profileImageUrl: "https://images.unsplash.com/photo-1755542366683-282c366982a1?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      storyImages: ["https://picsum.photos/403"],
      isViewed: true,
    ),
    Story(
      username: "user3",
      profileImageUrl: "https://images.unsplash.com/photo-1755677304075-d3357863b1f5?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      storyImages: ["https://picsum.photos/404"],
      isViewed: false,
    ),
    Story(
      username: "user4",
      profileImageUrl: "https://images.unsplash.com/photo-1699474072277-aeccb6e17263?q=80&w=1161&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      storyImages: ["https://picsum.photos/405"],
      isViewed: true,
    ),
  ];

  final List<Post> posts = [
    Post(
      username: "travel_lover",
      profileImageUrl: "https://images.unsplash.com/photo-1755324132725-ac63b25d7a46?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      postImageUrl: "https://images.unsplash.com/photo-1755542366683-282c366982a1?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      caption: "Exploring beautiful places around the world 🌎 ",
      likes: 1243,
      comments: 87,
      timeAgo: "2 hours ago",
      isLiked: false,
        location: "Amman, Jordan",
      hastag: "#travel #adventure"
    ),
    Post(
      username: "foodie_gram",
      profileImageUrl: "https://plus.unsplash.com/premium_photo-1755582215751-c96b8d2aca11?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      postImageUrl: "https://images.unsplash.com/photo-1755677304075-d3357863b1f5?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      caption: "Delicious breakfast to start the day right! 🍳🥑 ",
      likes: 876,
      comments: 32,
      timeAgo: "5 hours ago",
      isLiked: true,
        location: "Amman, Jordan",
      hastag: "#foodie #breakfast"
    ),
    Post(
      username: "nature_photographer",
      profileImageUrl: "https://images.unsplash.com/photo-1755048789108-5e8fb6b28907?q=80&w=685&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      postImageUrl: "https://images.unsplash.com/photo-1699474072277-aeccb6e17263?q=80&w=1161&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      caption: "Sunset moments are the best 🌅 ",
      likes: 2107,
      comments: 143,
      timeAgo: "1 day ago",
      isLiked: false,
      location: "Amman, Jordan",
      hastag: "#nature #photography"
    ),
    Post(
      username: "nature_photographer",
      profileImageUrl: "https://images.unsplash.com/photo-1594026724063-fcf520d86e23?q=80&w=685&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      postImageUrl: "https://plus.unsplash.com/premium_photo-1755105197531-cfa38d566b8c?q=80&w=1175&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      caption: "Sunset moments are the best 🌅 ",
      likes: 2107,
      comments: 143,
      timeAgo: "1 day ago",
      isLiked: false,
      location: "Amman, Jordan",
        hastag: "#nature #photography"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          "assets/images/camera_icon.png",
          height: 24,
          width: 22,
        ),
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 1),
            child: IconButton(
              icon: Badge(
                smallSize: 8,
                backgroundColor: Appcolors.UNREADBADGECOLOR,
                child: Image.asset(
                  "assets/images/bar_ig_tv_icon.png",
                  height: 24,
                  width: 25,
                ),
              ),
              onPressed: () {},
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) =>  MessagesScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset(
                "assets/images/messages_icon.png",
                height: 20,
                width: 23,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
          constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            StoriesWedgit(stories: stories),
            HomePostsWidgets(posts: posts,)
          ],
        ),
      ),


      /*NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 0,
        destinations: [
      NavigationDestination(
      icon: Icon(Icons.home_filled),
        label: "",
    ),
          NavigationDestination(
            icon: Icon(Icons.search_rounded),
            label: "",
          ),NavigationDestination(
            icon: Image.asset("assets/images/nav_add_icon.png"),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.heart),
            label: "",
          ),NavigationDestination(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                "https://images.unsplash.com/photo-1756408263381-ed1488d9b1ea?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            label: "",
          ),
    ]
    )*/
    );
  }


}
