import 'package:flutter/material.dart';
import 'package:recriando_instagram/models/user_model.dart';

class Post extends StatelessWidget {

  final int index;

  const Post(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: size.height * 0.7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTopWidgets(index),
          buildContent(index),
          const SizedBox(
            height: 10,
          ),
          buildBottomWidgets(index)
        ],
      ),
    );
  }

  Padding buildBottomWidgets(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Icon(
                Icons.favorite_border,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.mode_comment_outlined,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Transform.rotate(
                angle: 6,
                child: const Icon(
                  Icons.send_outlined,
                  size: 25,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "500 likes",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: userData[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: userData[index].description,
              )
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userData[0].avatarUrl),
                radius: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Add a Coment...",
                style: TextStyle(color: Colors.grey),
              ),
              const Spacer(),
              const Text("😀  💪")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Text(
                  '19 minutes ago · ',style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'See translation',style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildContent(int index) {
    return Expanded(
        child: Image.network(
      userData[index].postUrl,
      fit: BoxFit.cover,
    ));
  }
}

Widget buildTopWidgets(int index) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(userData[index].avatarUrl),
          radius: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          userData[index].name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Spacer(),
        const Icon(
          Icons.more_vert_outlined,
          size: 30,
        ),
      ],
    ),
  );
}
