import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/global_widgets/icon_text.dart';
import 'package:tugas_layouting/base/res/app_media.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      // padding: const EdgeInsets.only(left: 12),
      width: size.width * 0.54,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppMedia.concert,
                  height: 135,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: AppStyles.boxPutih,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Aug',
                        style: AppStyles.textFont.copyWith(
                            fontSize: 8,
                            color: AppStyles.textColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '24',
                        style: AppStyles.textFont.copyWith(
                            fontSize: 12,
                            color: AppStyles.textColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Bernadya Solo Concert',
              style: AppStyles.textFont.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppStyles.textColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              '200k-250k',
              style: AppStyles.textFont.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppStyles.primaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: IconText(
                icon: FluentIcons.location_12_filled,
                text: 'Mojokerto, East Java',
                color: AppStyles.textColor,
                textSize: 12,
                iconSize: 14),
          ),
        ],
      ),
    );
  }
}
