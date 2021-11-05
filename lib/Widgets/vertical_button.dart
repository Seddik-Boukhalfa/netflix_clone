import 'package:flutter/material.dart';
import 'package:netflix_clone/constants.dart';

class VerticalButton extends StatelessWidget {
  const VerticalButton({
    Key? key,
    this.icon,
    this.title,
    this.func,
  }) : super(key: key);

  final IconData? icon;
  final String? title;
  final Function()? func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhite,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title!,
            style: const TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
