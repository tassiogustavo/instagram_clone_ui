import 'package:flutter/material.dart';
import 'package:recriando_instagram/models/user_model.dart';
import 'package:recriando_instagram/widgets/post.widget.dart';
import 'package:recriando_instagram/widgets/story.widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Story(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: userData.length,
              itemBuilder: (_, index) {
                return Post(index);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  BottomNavigationBar buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: 0,
      fixedColor: Colors.white,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        const BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: ""),
        const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: ""),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(userData[0].avatarUrl),
              radius: 15,
            ),
            label: ""),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "Instagram",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.add_box_outlined,
            size: 25,
          ),
        ),
        const SizedBox(width: 15),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.favorite_border_outlined,
            size: 25,
          ),
        ),
        const SizedBox(width: 15),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.maps_ugc_outlined,
            size: 25,
          ),
        ),
      ],
    );
  }
}
