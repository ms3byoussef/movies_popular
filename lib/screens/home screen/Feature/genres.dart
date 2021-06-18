// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:movies_app/constants.dart';

// ignore: must_be_immutable
class Genres extends StatelessWidget {
  List<String> geners = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: 36,
      child: ListView.builder(
        itemCount: geners.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GenreCard(
          gener: geners[index],
        ),
      ),
    );
  }
}

class GenreCard extends StatelessWidget {
  final String gener;
  const GenreCard({
    required this.gener,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        gener,
        style: TextStyle(
          color: kTextColor.withOpacity(.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
