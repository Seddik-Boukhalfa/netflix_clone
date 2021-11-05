import 'package:flutter/material.dart';
import 'package:netflix_clone/constants.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: kPrimary,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
          color: kPrimary,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: kWhite,
        padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
      ),
    );
  }
}
