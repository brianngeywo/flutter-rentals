import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/reusables/text_form_field_widget.dart';

Widget createRentalFormFieldsWidget(
  BuildContext context,
  double height,
  String hintText,
  TextInputType textInputType,
  TextEditingController controller,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: height,
      decoration: BoxDecoration(
        color: fgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextFormFieldWidget(
        hintText: hintText,
        textInputType: textInputType,
        controller: controller,
        onSubmitField: () {},
        onFieldTap: () {},
        prefixIcon: null,
        onChanged: (_) => {},
        borderSideColor: const Color(0x00000000),
        clearIconColor: const Color(0xFF757575),
      ),
    ),
  );
}
