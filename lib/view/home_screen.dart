import 'package:flutter/material.dart';
import 'package:tech_blog/components/colors.dart';
import 'package:tech_blog/components/hashtags.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodymargin,
  });

  final Size size;
  final TextTheme textTheme;
  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
        child: Column(
          children: [
            //top banner
            TopBanner(size: size, textTheme: textTheme),
            //end top banner

            //HashTags
            HashTags(bodymargin: bodymargin),
            //End HashTags

            //hottest posts
            HotPostsTitle(bodymargin: bodymargin),
            HotPosts(size: size, bodymargin: bodymargin),
            //end hottest posts

            //hottest podcasts
            HotPodcastsTitle(bodymargin: bodymargin),
            HotPodcasts(size: size, bodymargin: bodymargin),
            //end hottest posts

            SizedBox(
              height: size.height / 10,
            )
          ],
        ),
      ),
    );
  }
}

class HotPodcasts extends StatelessWidget {
  const HotPodcasts({
    super.key,
    required this.size,
    required this.bodymargin,
  });

  final Size size;
  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.8,
      child: ListView.builder(
        itemCount: podcastList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(index == 0 ? bodymargin : 16, 8,
                    index == podcastList.length - 1 ? bodymargin : 0, 0),
                child: SizedBox(
                  height: size.height / 5.3,
                  width: size.width / 2.4,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(podcastList[index].imageUrl),
                          ),
                        ),
                        foregroundDecoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(
                              colors: GradiantColors.hotPostsCover,
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(podcastList[index].writer),
                            Text(podcastList[index].views)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(index == 0 ? bodymargin : 16, 8,
                    index == podcastList.length - 1 ? bodymargin : 0, 0),
                child: SizedBox(
                  width: size.width / 2.4,
                  child: Text(
                    podcastList[index].title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HotPodcastsTitle extends StatelessWidget {
  const HotPodcastsTitle({
    super.key,
    required this.bodymargin,
  });

  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(bodymargin, 16, 0, 0),
      child: Row(
        children: [
          ImageIcon(
            Assets.icons.pen.provider(),
            color: SolidColors.hottestPosts,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            MyStrings.hotestPodcasts,
            style: TextStyle(color: SolidColors.hottestPosts, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class HotPosts extends StatelessWidget {
  const HotPosts({
    super.key,
    required this.size,
    required this.bodymargin,
  });

  final Size size;
  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.8,
      child: ListView.builder(
        itemCount: blogList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(index == 0 ? bodymargin : 16, 8,
                    index == blogList.length - 1 ? bodymargin : 0, 0),
                child: SizedBox(
                  height: size.height / 5.3,
                  width: size.width / 2.4,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(blogList[index].imageUrl),
                          ),
                        ),
                        foregroundDecoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(
                              colors: GradiantColors.hotPostsCover,
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(blogList[index].writer),
                            Text(blogList[index].views)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(index == 0 ? bodymargin : 16, 8,
                    index == blogList.length - 1 ? bodymargin : 0, 0),
                child: SizedBox(
                  width: size.width / 2.4,
                  child: Text(
                    blogList[index].title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HotPostsTitle extends StatelessWidget {
  const HotPostsTitle({
    super.key,
    required this.bodymargin,
  });

  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(bodymargin, 32, 0, 0),
      child: Row(
        children: [
          ImageIcon(
            Assets.icons.pen.provider(),
            color: SolidColors.hottestPosts,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            MyStrings.hotestBlogs,
            style: TextStyle(color: SolidColors.hottestPosts, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class HashTags extends StatelessWidget {
  const HashTags({
    super.key,
    required this.bodymargin,
  });

  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(index == 0 ? bodymargin : 8, 8,
                index == tagList.length - 1 ? 16 : 0, 0),
            child: MainTags(
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Container(
            width: size.width / 1.11,
            height: size.height / 3.8,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                    image: AssetImage(mainScreenTopBannerMap["imageAsset"]),
                    fit: BoxFit.fill)),
            foregroundDecoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                gradient: LinearGradient(
                    colors: GradiantColors.homeBannerCoverHighlight,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Writer ${mainScreenTopBannerMap["writer"]}",
                    style: textTheme.titleSmall,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        mainScreenTopBannerMap["view"],
                        style: textTheme.titleSmall,
                      )
                    ],
                  )
                ],
              ),
              Text(
                mainScreenTopBannerMap["title"],
                style: textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
