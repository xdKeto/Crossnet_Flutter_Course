import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.87,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff808080)),
        child: Row(
          children: [
            Icon(
              FluentIcons.music_note_1_20_regular,
              color: AppStyles.whiteColor,
              size: 16,
            ),
            Text(
              ' Music',
              style: AppStyles.textFont
                  .copyWith(color: AppStyles.whiteColor, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
