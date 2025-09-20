import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> unsplashImages = [
    "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Ym9va3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1441974231531-c6227db76b6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJlfGVufDB8fDB8fHww&w=1000&q=80",
    "https://images.unsplash.com/photo-1518837695005-2083093ee35b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWN8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWN8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1519751138087-5bf79df62d5b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1502082553048-f009c37129b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsfGVufDB8fDB8fHww&w=1000&q=80",
    "https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlfGVufDB8fDB8fHww&w=1000&q=80",
    "https://images.unsplash.com/photo-1518843025960-d60217f226f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BvcnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1510915361894-db8b60106cb1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXJ0fGVufDB8fDB8fHww&w=1000&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Maher',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.black),
          ],
        ),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset("assets/images/archive_icon.png"),
              title: Text("Archive"),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
            ListTile(
              leading: Image.asset("assets/images/activity_icon.png"),
              title: Text("Your activity"),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
            ListTile(
              leading: Image.asset("assets/images/name_tag_icon.png"),
              title: Text("Nametag"),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.bookmark, size: 23),
              title: Text("Saved  "),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
            ListTile(
              leading: Image.asset("assets/images/close_friend_icon.png"),
              title: Text("Close Friends"),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
            ListTile(
              leading: Image.asset("assets/images/add_person_icon.png"),
              title: Text("Discover People"),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
            ListTile(
              leading: Image.asset("assets/images/facebook_icon.png"),
              title: Text("Open Facebook"),
              iconColor: Color(0xff262626),
              onTap: () {
                closeDrawer();
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile stats section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Profile image
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/200',
                    ), // Replace with actual image
                  ),
                  // Stats
                  Column(
                    children: [
                      Text(
                        '54',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '834',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '162',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),
            // Bio section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jacob West',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('Digital goodies designer @pixseliz'),
                  SizedBox(height: 4),
                  Text('Everything is designed.'),
                ],
              ),
            ),
            // Edit profile button
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            // Category buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryButton(
                      'New',
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          height: 74,
                          width: 74,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    _buildCategoryButton(
                      "Friends",
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200?random=5',
                        ), // Replace with actual image
                      ),
                    ),
                    SizedBox(width: 8),

                    _buildCategoryButton(
                      "Sports",
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200?random=7',
                        ), // Replace with actual image
                      ),
                    ),
                    SizedBox(width: 8),
                    _buildCategoryButton(
                      "Design",
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200?random=12',
                        ), // Replace with actual image
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Posts grid (placeholder)
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 54,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[200],
                  child: Image.network(
                    'https://picsum.photos/200?random=$index',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(
    String text,
    Widget widget, {
    bool isSelected = false,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.grey[200],
            borderRadius: BorderRadius.circular(50),
          ),
          child: widget,
        ),
        Text(text),
      ],
    );
  }

  void closeDrawer() {
    Scaffold.of(context).closeEndDrawer();
  }
}

/*

 SingleChildScrollView(
        child: Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: unsplashImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return  Image.network(unsplashImages[index],fit: BoxFit.cover,);
                }
            )
        ),
      ),
 */
