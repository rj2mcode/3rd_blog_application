import 'package:flutter/material.dart';
import 'package:tech_blog/components/colors.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    super.key,
    required this.bodymargin,
  });

  final double bodymargin;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: SolidColors.profileDividerColor,
      indent: bodymargin,
      endIndent: bodymargin,
      thickness: 0.5,
    );
  }
}
