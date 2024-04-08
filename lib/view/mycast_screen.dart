import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_blog/components/colors.dart';
import 'package:tech_blog/components/hashtags.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'package:tech_blog/strings.dart';

class MyCasts extends StatefulWidget {
  const MyCasts({super.key});

  @override
  State<MyCasts> createState() => _MyCastsState();
}

class _MyCastsState extends State<MyCasts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bodyMargin = size.width / 14;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  Assets.images.robotIcon.path,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  MyStrings.welcomeMessageAfterEmailRegisteration,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      hintText: "Please enter your fillname"),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 64,
                ),
                const Text(
                  MyStrings.mycastsChooseYourCategories,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: GridView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: tagList.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.3,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              if (!tagListAdded.contains(tagList[index])) {
                                tagListAdded.add(tagList[index]);
                              }
                            });
                          },
                          child: MainTags(index: index));
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  Assets.images.arrowDown.path,
                  width: tagListAdded.isNotEmpty ? 64 : 0,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: GridView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: tagListAdded.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.3,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 40,
                        decoration: const BoxDecoration(
                            color: SolidColors.myTagsColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    tagListAdded.remove(tagListAdded[index]);
                                  });
                                },
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                              Text(" ${tagListAdded[index].title}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //     builder: (BuildContext context) => MyCasts()));
                    },
                    child: const Text("Continue",
                        style: TextStyle(color: Colors.white)))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
