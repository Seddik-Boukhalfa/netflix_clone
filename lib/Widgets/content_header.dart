import 'package:flutter/material.dart';
import 'package:netflix_clone/Models/models.dart';
import 'package:netflix_clone/Widgets/widgets.dart';
import 'package:netflix_clone/constants.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key, this.featuredContent}) : super(key: key);
  final Content? featuredContent;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent!.imageUrl!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kPrimary, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent!.titleImageUrl!),
          ),
        ),
        Positioned(
          bottom: 40.0,
          left: 0.0,
          right: 0.0,
          child: SizedBox(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalButton(
                  icon: Icons.add,
                  title: 'List',
                  func: () {},
                ),
                const PlayButton(),
                VerticalButton(
                  icon: Icons.info_outline_rounded,
                  title: 'Info',
                  func: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
