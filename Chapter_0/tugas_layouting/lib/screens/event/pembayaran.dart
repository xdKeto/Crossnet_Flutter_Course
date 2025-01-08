import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_media.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppStyles.whiteColor,
      appBar: AppBar(
        backgroundColor: AppStyles.whiteColor,
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              'In App Payment',
              style: AppStyles.textFont.copyWith(
                  fontSize: 20,
                  color: AppStyles.textColor,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Divider(
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: AppStyles.grayColor,
            height: 0,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppStyles.grayColor,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Card',
                  style: AppStyles.textFont.copyWith(fontSize: 12),
                ),
                Text(
                  'Virtual Account',
                  style: AppStyles.textFont.copyWith(fontSize: 12),
                ),
                Text(
                  'Transfer',
                  style: AppStyles.textFont.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Text(
            'Moshing Fest 2024',
            style: AppStyles.textFont.copyWith(
                fontSize: 14,
                color: AppStyles.textColor,
                fontWeight: FontWeight.w600),
          ),
          Text(
            '6 Normal Tickets',
            style: AppStyles.textFont.copyWith(
              fontSize: 14,
              color: AppStyles.textColor,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Divider(
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: AppStyles.grayColor,
            height: 0,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Text(
            'Rp600.000',
            style: AppStyles.textFont.copyWith(
                fontSize: 24,
                color: AppStyles.textColor,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Text(
            'Payment Method',
            style: AppStyles.textFont.copyWith(
                fontSize: 14,
                color: AppStyles.textColor,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      AppMedia.gopay,
                      scale: 15,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    '8971 3190 0666',
                    style: AppStyles.textFont.copyWith(
                      fontSize: 12,
                      color: AppStyles.textColor,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  const Icon(
                    FluentIcons.copy_16_regular,
                    size: 18,
                  ),
                ],
              ),
              Text(
                'Change',
                style: AppStyles.textFont.copyWith(
                  fontSize: 12,
                  color: AppStyles.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Divider(
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: AppStyles.grayColor,
            height: 0,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppStyles.pastelBlue),
            child: Text(
              'By purchasing this ticket, you agree to the terms and conditions of Moshing Fest 2024. Please review them carefully before completing your purchase',
              style: AppStyles.textFont
                  .copyWith(color: AppStyles.blueBlue, fontSize: 12),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyles.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {},
                    child: Text('Buy Now',
                        style: AppStyles.textFont.copyWith(
                            color: AppStyles.whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyles.grayColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancel',
                        style: AppStyles.textFont.copyWith(
                            color: AppStyles.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
