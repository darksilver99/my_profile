import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/app_state.dart';

scrollToSection(_key) {
  final RenderBox renderBox = _key.currentContext!.findRenderObject() as RenderBox;
  final double offset = renderBox.localToGlobal(Offset.zero).dy;

  FFAppState().scrollController.animateTo(
    offset,
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut,
  );
}
