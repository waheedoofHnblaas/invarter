import 'package:flutter/material.dart';
import 'package:invarter/core/constant/colors.dart';

class AppCardData extends StatelessWidget {
   AppCardData({Key? key,required this.title}) : super(key: key);

  String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      color: AppColors.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: AppColors.background),
          ),
        ),
      ),
    );
  }
}
