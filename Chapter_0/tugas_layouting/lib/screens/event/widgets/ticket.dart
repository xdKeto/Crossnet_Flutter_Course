import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: AppStyles.grayColor.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                FluentIcons.ticket_diagonal_16_regular,
                color: AppStyles.primaryColor,
              ),
            ),
            Column(
              children: [
                Text(
                  'Normal Ticket',
                  style: AppStyles.textFont.copyWith(
                    color: AppStyles.textColor,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Rp100.000',
                  style: AppStyles.textFont.copyWith(
                      color: AppStyles.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: AppStyles.grayColor.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                FluentIcons.subtract_12_regular,
                color: AppStyles.primaryColor,
                size: 16,
              ),
            ),
            Text(
              '1',
              style: AppStyles.textFont.copyWith(
                  color: AppStyles.textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: AppStyles.grayColor.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                FluentIcons.add_12_regular,
                color: AppStyles.primaryColor,
                size: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
