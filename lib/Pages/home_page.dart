import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/Data/data.dart';
import 'package:netflix_clone/Widgets/widgets.dart';
import 'package:netflix_clone/constants.dart';
import 'package:netflix_clone/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kPrimary,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.grey[850],
          child: const Icon(Icons.cast),
        ),
        appBar: PreferredSize(
          preferredSize: Size(size.width, 50.0),
          child: CustomAppBar(
            scrollOffset: controller.scrollOffset,
          ),
        ),
        body: CustomScrollView(
          controller: controller.scrollController,
          physics: const ClampingScrollPhysics(),
          slivers: const [
            SliverToBoxAdapter(
              child: ContentHeader(
                featuredContent: sintelContent,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 20.0),
              sliver: SliverToBoxAdapter(
                child: Previews(
                  title: 'Previews',
                  contentList: previews,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ContentList(
                title: 'My list',
                contentList: myList,
              ),
            ),
            SliverToBoxAdapter(
              child: ContentList(
                title: 'Netflix Originals',
                contentList: originals,
                isOriginals: true,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 20.0),
              sliver: SliverToBoxAdapter(
                child: ContentList(
                  title: 'Trending',
                  contentList: trending,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
