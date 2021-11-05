import 'package:flutter/material.dart';
import 'package:netflix_clone/Models/models.dart';
import 'package:netflix_clone/constants.dart';

class ContentList extends StatelessWidget {
  const ContentList({
    Key? key,
    this.title,
    this.contentList,
    this.isOriginals = false,
  }) : super(key: key);

  final String? title;
  final List<Content>? contentList;
  final bool isOriginals;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24.0),
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: kWhite,
            ),
          ),
        ),
        SizedBox(
          height: isOriginals ? 500.0 : 220.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              itemCount: contentList!.length,
              itemBuilder: (ctx, index) {
                final Content content = contentList![index];
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: isOriginals ? 400.0 : 200.0,
                    width: isOriginals ? 200.0 : 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(content.imageUrl!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
