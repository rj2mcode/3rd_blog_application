import 'package:flutter/material.dart';
import 'package:tech_blog/components/colors.dart';
import 'package:tech_blog/components/divider_line.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/components/strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height / 10,
          ),
          Image(
            image: Assets.images.profile.provider(),
            height: 96,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ImageIcon(
                Assets.icons.pen.provider(),
                color: SolidColors.editProfileColor,
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                MyStrings.profileEdit,
                style: TextStyle(color: SolidColors.editProfileColor),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Reza Javanmaqul",
            style: TextStyle(color: SolidColors.profileUserDataColor),
          ),
          const Text(
            "rj2mcode@gmail.com",
            style: TextStyle(color: SolidColors.profileUserDataColor),
          ),
          const SizedBox(
            height: 50,
          ),
          DividerLine(bodymargin: bodymargin),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  MyStrings.profileFavoritePosts,
                  style: TextStyle(color: SolidColors.profileUserDataColor),
                ),
              ),
            ),
          ),
          DividerLine(bodymargin: bodymargin),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  MyStrings.profileFavoritePodcasts,
                  style: TextStyle(color: SolidColors.profileUserDataColor),
                ),
              ),
            ),
          ),
          DividerLine(bodymargin: bodymargin),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  MyStrings.profileLogout,
                  style: TextStyle(color: SolidColors.profileUserDataColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height / 8,
          )
        ],
      ),
    );
  }
}
