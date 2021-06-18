import '../../../constants.dart';
import 'body.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: bulidAppBar(),
        body: Body(),
      ),
    );
  }

  AppBar bulidAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        color: Colors.black,
        padding: EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          color: Colors.black,
          padding: EdgeInsets.only(right: kDefaultPadding),
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
