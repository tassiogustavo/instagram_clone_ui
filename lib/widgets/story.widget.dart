import 'package:flutter/material.dart';
import 'package:recriando_instagram/models/user_model.dart';
import 'package:recriando_instagram/pages/story.page.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: userData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StoryPage(index: index,)));
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 6),
                  child: Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.only(top: 2,bottom: 2),
                    margin: const EdgeInsets.only(top: 7),
                    decoration: BoxDecoration(
                        color: index == 0 ? Colors.grey : null,
                        gradient: index != 0
                            ? const LinearGradient(colors: [
                                Color.fromRGBO(250, 126, 30, 1),
                                Color.fromRGBO(214, 41, 118, 1)
                              ])
                            : null,
                        shape: BoxShape.circle),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(userData[index].avatarUrl),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  userData[index].name,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white70),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
