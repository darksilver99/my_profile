import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/app_state.dart';
import 'package:my_profile/flutter_flow/flutter_flow_animations.dart';
import 'package:visibility_detector/visibility_detector.dart';

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
    FFAppState().scrollDistance = 1.0;
    FFAppState().update(() {});
  }
}

scrollToTop() {
  FFAppState().scrollController.animateTo(
        0.0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
  FFAppState().scrollDistance = 0.0;
  FFAppState().update(() {});
}

animateWidget(VisibilityInfo info, AnimationInfo? animationsMap) async {
  if (info.visibleFraction > 0.5) {
    if (animationsMap != null && !animationsMap.controller.isAnimating) {
      await animationsMap.controller.forward(from: 0.0);
    }
  } else if (info.visibleFraction <= 0) {
    if (animationsMap != null) {
      await animationsMap.controller.reverse(from: 0.0);
    }
  }
}
