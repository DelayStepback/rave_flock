import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDefaultInputThemeDark{

  TextStyle _builtTextStyle(Color color, {double size = 16.0}){
    return TextStyle(color: color, fontSize: size.sp);
  }

  OutlineInputBorder _buildBorder(Color color){
    return OutlineInputBorder(
      borderRadius:  BorderRadius.all(Radius.circular(20).r,

      ),
      borderSide: BorderSide(
        color: color,
        width: 2.0,
      )
    );
  }

  InputDecorationTheme theme() => InputDecorationTheme(

    //
    contentPadding: const EdgeInsets.all(16).r,
    isDense: true,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    constraints: BoxConstraints(maxWidth: 300.w),


    // TODO:
    // Borders
    enabledBorder: _buildBorder(Colors.white),
    errorBorder: _buildBorder(Colors.red),
    focusedErrorBorder: _buildBorder(Colors.red[200]!),
    focusedBorder: _buildBorder(Colors.blueGrey),

    disabledBorder: _buildBorder(Colors.grey[400]!),

    // TextStyles
    suffixStyle: _builtTextStyle(Colors.white),
    counterStyle: _builtTextStyle(Colors.grey, size:12.0),
    floatingLabelStyle: _builtTextStyle(Colors.white),

    errorStyle: _builtTextStyle(Colors.red, size: 12.0),
    helperStyle: _builtTextStyle(Colors.red, size: 12.0),
    hintStyle: _builtTextStyle(Colors.grey),

    labelStyle: _builtTextStyle(Colors.white),
    prefixStyle: _builtTextStyle(Colors.white),

  );
}