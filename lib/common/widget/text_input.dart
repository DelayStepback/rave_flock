import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.maxLine,
    this.controller,
    this.icon,
    this.focusNode,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.keyboardType,
    this.errorText,
    this.valid,
    this.readOnly = false,
    required this.label,
  }) : super(key: key);

  final String? initialValue;
  final String label;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final Icon? icon;
  final TextEditingController? controller;
  final AutovalidateMode autovalidateMode;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool? valid;
  final String? errorText;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      textInputAction: TextInputAction.next,
      autovalidateMode: autovalidateMode,
      cursorColor: Colors.grey,
      initialValue: initialValue,
      maxLines: maxLine,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 24.sp),
        floatingLabelStyle: TextStyle(fontSize: 24.sp, color: Color(0xFFEEF140) ),
          label: Text(label), prefixIcon: icon, errorText: valid?? true ? null: errorText ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}