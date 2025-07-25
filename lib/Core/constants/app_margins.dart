import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppMargins
{
  AppMargins._();

  static final symmetric = Symmetric._();
  static final directional = Directional._();
  static final special = Special._();
}

class Symmetric
{
  Symmetric._();

  /// [_horizontal_16.w]
  EdgeInsets get medium => EdgeInsets.symmetric(horizontal: 16.w);
}

class Directional
{
  Directional._();

  /// [_directional_16.w] End Directional Margin (16px)
  EdgeInsetsDirectional get smallEnd => EdgeInsetsDirectional.only(end: 16.w);
}

class Special
{
  Special._();

  /// [0.w]
  EdgeInsets get zero => EdgeInsets.zero;
}
