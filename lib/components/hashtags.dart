import 'package:flutter/material.dart';
import 'package:tech_blog/components/colors.dart';
import 'package:tech_blog/models/fake_data.dart';

class MainTags extends StatelessWidget {
  MainTags({super.key, required this.index});
  var index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: GradiantColors.tags),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Row(
          children: [
            const Icon(
              Icons.tag,
              color: Colors.white,
            ),
            Text(" ${tagList[index].title}"),
          ],
        ),
      ),
    );
  }
}
