import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:whatsapp_clone_flutter/common/utils/colors.dart';
import 'package:whatsapp_clone_flutter/features/auth/controller/auth_controller.dart';

class OTPScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;

  const OTPScreen({
    super.key,
    required this.verificationId,
  });

  void verifyOTP(WidgetRef ref, BuildContext context, String userOTP) {
    ref
        .read(authControllerProvider)
        .verifyOTP(context, verificationId, userOTP);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Your Number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/images/img_verification.png',
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('We have sent an SMS with a code.'),
            const SizedBox(
              height: 20,
            ),
            OTPTextField(
              length: 6,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              width: size.width * 0.8,
              fieldWidth: size.width * 0.1,
              otpFieldStyle: OtpFieldStyle(
                borderColor: textColor,
                disabledBorderColor: tabColor,
                focusBorderColor: tabColor,
                enabledBorderColor: textColor,
              ),
              fieldStyle: FieldStyle.box,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                decorationColor: textColor,
              ),
              keyboardType: TextInputType.number,
              onChanged: (val) {
                if (val.length == 6) {
                  // print('verifying OTP');
                  verifyOTP(ref, context, val.trim());
                }
                // print('This function was run');
              },
            ),
          ],
        ),
      ),
    );
  }
}
