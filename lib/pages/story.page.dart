import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:recriando_instagram/models/user_model.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  double percetWatched = 0;

  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _startWatching();
  }

  void _startWatching() {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (percetWatched + 0.01 < 1) {
          percetWatched += 0.01;
        } else {
          percetWatched = 1;
          timer.cancel();

          Navigator.pop(context);
        }
      });
    });
  }

  bool onPreesBackButton(){
    if(_timer.isActive){
      _timer.cancel();
      Navigator.pop(context);
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        bool result = onPreesBackButton();
        return await Future.value(result);
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: buildAppBar(),
        body: buildBody(),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Padding buildBottomNavigationBar() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Message'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5.0, right: 5),
              child: Icon(
                Icons.favorite_outline,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 3),
              child: Transform.rotate(
                angle: 6,
                child: const Icon(
                  Icons.send_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
  }

  Container buildBody() {
    return Container(
        height: double.infinity,
        padding: const EdgeInsets.only(top: 30),
        child: Image.network(
          userData[widget.index].postUrl,
          fit: BoxFit.fitWidth,
        ),
      );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 7),
              child: LinearPercentIndicator(
                lineHeight: 3,
                percent: percetWatched,
                progressColor: Colors.grey[400],
                backgroundColor: Colors.grey[600],
              ),
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(userData[widget.index].avatarUrl),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text(userData[widget.index].name,
                          style: const TextStyle(fontSize: 20)),
                      const Text(
                        ' 19m',
                        style: TextStyle(color: Colors.white54, fontSize: 17),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        elevation: 0.7,
        actions: const [
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
        ],
      );
  }
}
