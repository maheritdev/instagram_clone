import 'package:flutter/material.dart';
import 'package:instagram_clone/constant/Appcolors.dart';
import 'package:instagram_clone/models/Story.dart';

class StoriesWedgit extends StatelessWidget {
  final List<Story> stories;
  const StoriesWedgit({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {

          if(index == 0){
            return Container(
              padding: EdgeInsets.only(top: 10,left: 20,right: 10),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1756408263381-ed1488d9b1ea?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        height: 70,
                                        width: 70,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 40.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Your Story",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
          final item = stories[index-1];

          return Container(
            padding: EdgeInsets.only(top: 10,left: 4),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: !item.isViewed
                        ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: Appcolors.storiesColor,
                    )
                        : null,
                    border: item.isViewed
                        ? Border.all(color: Colors.grey, width: 3)
                        : null,
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      item.profileImageUrl,
                      height: 68,
                      width: 68,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  item.username,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
