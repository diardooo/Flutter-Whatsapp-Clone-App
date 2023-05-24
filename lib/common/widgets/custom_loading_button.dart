import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:whatsapp_clone_flutter/common/utils/colors.dart';

class CustomLoadingButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final RoundedLoadingButtonController btnController;

  const CustomLoadingButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.btnController});

  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      onPressed: onPressed,
      controller: btnController,
      color: tabColor,
      failedIcon: Icons.close,
      successColor: tabColor,
      child: Text(
        text,
        style: const TextStyle(color: blackColor),
      ),
    );
  }
}
