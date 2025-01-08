import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/global_widgets/icon_text.dart';
import 'package:tugas_layouting/base/res/app_media.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';
import 'package:tugas_layouting/screens/event/widgets/buy_button.dart';
import 'package:tugas_layouting/screens/event/widgets/category_box.dart';
import 'package:tugas_layouting/screens/event/widgets/ticket.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const BuyButton(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            floating: false,
            pinned: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.whiteColor,
                ),
                child: Icon(
                  FluentIcons.arrow_left_12_regular,
                  color: AppStyles.textColor,
                ),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.whiteColor,
                ),
                child: Icon(
                  FluentIcons.bookmark_16_regular,
                  color: AppStyles.textColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.whiteColor,
                ),
                child: Icon(
                  FluentIcons.options_16_regular,
                  color: AppStyles.textColor,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    AppMedia.concert,
                    fit: BoxFit.cover,
                  )),
                  Positioned.fill(
                      child: Container(
                    color: Colors.black.withOpacity(0.5),
                  )),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CategoryBox(),
                          Text(
                            'Moshing Fest 2024',
                            style: AppStyles.subHeader.copyWith(
                              color: AppStyles.whiteColor,
                            ),
                          ),
                          Row(
                            children: [
                              IconText(
                                  icon: FluentIcons.calendar_12_regular,
                                  text: '26 Agustus 2024',
                                  color: AppStyles.whiteColor,
                                  textSize: 12,
                                  iconSize: 18),
                              Text(
                                ' | ',
                                style: AppStyles.textFont.copyWith(
                                    color: AppStyles.whiteColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              IconText(
                                  icon: FluentIcons.location_12_regular,
                                  text: 'Jombang, East Java',
                                  color: AppStyles.whiteColor,
                                  textSize: 12,
                                  iconSize: 18),
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    'About Event',
                    style: AppStyles.textFont.copyWith(
                        color: AppStyles.textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec erat volutpat, ornare dolor sit amet, eleifend libero. Nam nec mauris nulla. Sed eleifend magna in lacinia gravida. Nunc vehicula at nibh at hendrerit.',
                    style: AppStyles.textFont,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    'Available Tickets',
                    style: AppStyles.textFont.copyWith(
                        color: AppStyles.textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Column(children: List.generate(6, (tiket) => const Ticket())),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
