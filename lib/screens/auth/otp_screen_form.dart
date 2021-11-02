import 'package:book_app/components/default_button.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text('OTP Verification', style: headingStyle),
              Text('We sent your code to 0813843****'),
              BuildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Resend OTP Code',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row BuildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}

class OtForm extends StatefulWidget {
  OtForm({Key key}) : super(key: key);

  @override
  _OtFormState createState() => _OtFormState();
}

class _OtFormState extends State<OtForm> {
  FocusNode pin2focusNode;
  FocusNode pin3focusNode;
  FocusNode pin4focusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2focusNode = FocusNode();
    pin3focusNode = FocusNode();
    pin4focusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2focusNode.dispose();
    pin3focusNode.dispose();
    pin4focusNode.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(60),
                child: TextFormField(
                  autocorrect: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2focusNode);
                  },
                ),
              ),
              SizedBox(
                width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(60),
                child: TextFormField(
                  focusNode: pin2focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin3focusNode);
                  },
                ),
              ),
              SizedBox(
                width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(60),
                child: TextFormField(
                  focusNode: pin3focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin4focusNode);
                  },
                ),
              ),
              SizedBox(
                width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(60),
                child: TextFormField(
                  focusNode: pin4focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    pin4focusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: 'Continue',
            press: () {},
          )
        ],
      ),
    );
  }
}
