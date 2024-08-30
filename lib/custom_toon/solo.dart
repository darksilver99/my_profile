import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/app_state.dart';

scrollToSection(_key) {
  /*final RenderBox renderBox = _key.currentContext!.findRenderObject() as RenderBox;
  final double offset = renderBox.localToGlobal(Offset.zero).dy;

  FFAppState().scrollController.animateTo(
        offset,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );*/

  final BuildContext? context = _key.currentContext;

  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      alignment: 0.0, // Aligns the widget to the top of the scroll view
    );
  }
}

scrollToTop() {
  FFAppState().scrollController.animateTo(
        0.0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
}
