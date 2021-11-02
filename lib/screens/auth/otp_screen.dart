import 'package:book_app/constants.dart';
import 'package:book_app/screens/auth/otp_screen_form.dart';
import 'package:flutter/material.dart';

// class OtpScreen extends StatefulWidget {
//   static String routeName = '/otp';

//   OtpScreen({Key key}) : super(key: key);

//   @override
//   _OtpScreenState createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'OTP Verification',
//           style: TextStyle(color: kTextColor),
//         ),
//       ),
//       body: OtpForm(),
//     );
//   }
// }

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key key}) : super(key: key);

  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP Verification',
          style: TextStyle(color: kTextColor),
        ),
      ),
      body: OtpForm(),
    );
  }
}
