import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tech_blog/components/api_constant.dart';
import 'package:tech_blog/components/colors.dart';
import 'package:tech_blog/components/strings.dart';
import 'package:tech_blog/components/url_luncher.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/services/dio_service.dart';
import 'package:tech_blog/view/home_screen.dart';
import 'package:tech_blog/view/profile_screen.dart';
import 'package:tech_blog/view/register_intro.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class MainScreen extends StatelessWidget {
  RxInt selectedPageIndex = 0.obs;

  MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    DioService().getMethod(ApiConstant.getHomeItems);
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodymargin = size.width / 16;

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                  child: Image.asset(
                    Assets.images.logo960x960.path,
                    scale: 10,
                  ),
                )),
                ListTile(
                  title: const Text("My Profile"),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text("Favorite Blogs"),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text("Favorite Podcasts"),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text("Shere this app"),
                  onTap: () async {
                    await Share.share("Hi");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("About us"),
                  onTap: () {
                    mylunchUrl(MyStrings.techBlogUrl);
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("Support"),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text("Exit"),
                  onTap: () {},
                ),
                const Divider(),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: SolidColors.topHeaderBg,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: const Icon(Icons.menu),
                onTap: () {
                  _key.currentState!.openDrawer();
                },
              ),
              Image(
                image: Assets.images.logoPng.provider(),
                height: size.height / 18,
              ),
              const Icon(Icons.search),
            ],
          ),
        ),
        body: Stack(
          children: [
            Stack(children: [
              Positioned.fill(
                  child: Obx(
                () => IndexedStack(
                  index: selectedPageIndex.value,
                  children: [
                    HomeScreen(
                        size: size,
                        textTheme: textTheme,
                        bodymargin: bodymargin),
                    ProfileScreen(
                        size: size,
                        textTheme: textTheme,
                        bodymargin: bodymargin),
                    const RegisterIntro(),
                  ],
                ),
              )),
            ]),
            BottomNavigation(
              size: size,
              bodymargin: bodymargin,
              changeScreen: (int value) {
                selectedPageIndex.value = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.size,
    required this.bodymargin,
    required this.changeScreen,
  });

  final Size size;
  final double bodymargin;
  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: size.height / 12,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: GradiantColors.buttomNavigationBackground)),
            child: Padding(
              padding: EdgeInsets.only(
                  right: bodymargin, left: bodymargin, bottom: 16),
              child: Container(
                height: size.height / 8,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(
                        colors: GradiantColors.buttomNavigation,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () => changeScreen(1),
                        icon: ImageIcon(
                          Assets.icons.user.provider(),
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () => changeScreen(0),
                        icon: ImageIcon(
                          Assets.icons.home.provider(),
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () => changeScreen(2),
                        icon: ImageIcon(
                          Assets.icons.write.provider(),
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
