import 'package:flutter/material.dart';
import 'package:netflix_clone/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.scrollOffset = 0.0}) : super(key: key);

  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: kPrimary.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset('assets/images/netflixLogo1.png'),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppBarButton(
                    text: 'TV Shows',
                    func: () {},
                  ),
                  AppBarButton(
                    text: 'Movies',
                    func: () {},
                  ),
                  AppBarButton(
                    text: 'My list',
                    func: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
    this.text,
    this.func,
  }) : super(key: key);
  final String? text;
  final Function()? func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Text(
        text!,
        style: const TextStyle(
          color: kWhite,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
