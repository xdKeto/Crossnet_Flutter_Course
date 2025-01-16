import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tugas_layouting/base/global_widgets/double_text.dart';
import 'package:tugas_layouting/base/res/all_json.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';
import 'package:tugas_layouting/screens/event/event_screen.dart';
import 'package:tugas_layouting/screens/home/widgets/categories.dart';
import 'package:tugas_layouting/screens/home/widgets/dropdown.dart';
import 'package:tugas_layouting/screens/home/widgets/events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 42,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(
                FluentIcons.location_12_filled,
                color: AppStyles.textColor,
                size: 20,
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              const Dropdown(),
              SizedBox(
                width: screenWidth * 0.29,
              ),
              Icon(
                FluentIcons.alert_12_regular,
                color: AppStyles.textColor,
                size: 28,
              )
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Hello, Sasmita',
            style: AppStyles.subHeader.copyWith(color: AppStyles.textColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'There are 32 events around your location.',
            style: AppStyles.subHeader.copyWith(color: AppStyles.primaryColor),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.035,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: AppStyles.boxPutih,
            child: const Row(
              children: [
                Icon(FluentIcons.search_12_regular),
                Expanded(child: Text(' Search your favorite events...')),
                Icon(FluentIcons.options_16_regular)
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.035,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: categories
                    .map((category) => Categories(category: category))
                    .toList()),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.035,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DoubleText(
              leftText: 'Upcoming Events', rightText: 'See all Events'),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                    4,
                    (index) => GestureDetector(
                        onTap: () {
                          showMaterialModalBottomSheet(
                              context: context,
                              enableDrag: false,
                              builder: (BuildContext context) =>
                                  const EventScreen());
                        },
                        child: const Events()))),
          ),
        )
      ],
    );
  }
}
