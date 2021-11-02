import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      errors.length,
      (index) => FormErrorText(
        errors[index],
      ),
    ));
  }

  Row FormErrorText(String error) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(14),
          width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(14),
        ),
        SizedBox(
          width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(10),
        ),
        Text(error)
      ],
    );
  }
}
