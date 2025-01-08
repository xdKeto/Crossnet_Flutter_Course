import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';
import 'package:tugas_layouting/screens/event/pembayaran.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  isDismissible: false,
                  enableDrag: false,
                  builder: (BuildContext context) => Container(
                        decoration: BoxDecoration(
                            color: AppStyles.whiteColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        padding: const EdgeInsets.all(16),
                        height: screenHeight * 0.75,
                        width: double.infinity,
                        child: const Pembayaran(),
                      ));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppStyles.primaryColor),
              child: Text(
                'Buy Tickets',
                style: AppStyles.textFont.copyWith(
                    color: AppStyles.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ))
      ],
    );
  }
}
