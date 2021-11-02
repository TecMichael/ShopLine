import 'package:book_app/component/components/default_button.dart';
import 'package:book_app/component/components/form_error.dart';
// import 'package:book_app/components/default_button.dart';
// import 'package:book_app/components/form_error.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/screens/auth/otp_screen.dart';
import 'package:book_app/size_config.dart';
// import 'package:book_app/screens/login_suceesfull_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class CompleteForm extends StatelessWidget {
  const CompleteForm({Key key}) : super(key: key);

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
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text('Complete Profile', style: headingStyle),
              Text(
                'Complete your details or continue \nwith socail media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              ComplereProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                'By continuing your confirm that you gave \nwith our Term and Condition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComplereProfileForm extends StatefulWidget {
  ComplereProfileForm({Key key}) : super(key: key);

  @override
  _ComplereProfileFormState createState() => _ComplereProfileFormState();
}

class _ComplereProfileFormState extends State<ComplereProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          BuildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          BuildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          BuildAddressFormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField BuildAddressFormField() {
    return TextFormField(
      onSaved: (value) => address = value,
      // keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(
            () {
              errors.remove(kInvalidEmailError);
            },
          );
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
          ),
          child: SvgPicture.asset('assets/icons/Location point.svg'),
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      // keyboardAppearance: TextInputType.number,
      onSaved: (value) => phoneNumber = value,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(
            () {
              errors.remove(kPhoneNumberNullError);
            },
          );
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
          ),
          child: SvgPicture.asset('assets/icons/Phone.svg'),
        ),
      ),
    );
  }

  TextFormField BuildLastNameFormField() {
    return TextFormField(
      onSaved: (value) => lastName = value,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(
            () {
              errors.remove(kInvalidEmailError);
            },
          );
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your Last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
          ),
          child: SvgPicture.asset('assets/icons/User.svg'),
        ),
      ),
    );
  }

  TextFormField BuildFirstNameFormField() {
    return TextFormField(
      onSaved: (value) => firstName = value,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(
            () {
              errors.remove(kInvalidEmailError);
            },
          );
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
            (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
          ),
          child: SvgPicture.asset('assets/icons/User.svg'),
        ),
      ),
    );
  }
}
