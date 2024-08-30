import 'package:my_profile/custom_toon/solo.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section1_model.dart';
export 'section1_model.dart';

class Section1Widget extends StatefulWidget {
  const Section1Widget({super.key});

  @override
  State<Section1Widget> createState() => _Section1WidgetState();
}

class _Section1WidgetState extends State<Section1Widget>
    with TickerProviderStateMixin {
  late Section1Model _model;

  final animationsMap = <String, AnimationInfo>{};

  final GlobalKey section1Key = GlobalKey();

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Section1Model());

    animationsMap.addAll({
      'rowOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));

    FFAppState().section1Key = section1Key;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: section1Key,
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 1.0,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/laptop-notebook-pen-coffee-cup-plants-wooden-desk_9975-24286.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x80000000),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VisibilityDetector(
                key: Key('rowOnActionTriggerAnimation1'),
                onVisibilityChanged: (VisibilityInfo info) async {
                  AnimationInfo? widgetAnimate = animationsMap['rowOnActionTriggerAnimation1'];
                  if (info.visibleFraction > 0.5) {
                    if (widgetAnimate != null && !_model.isAnimated) {
                      await widgetAnimate.controller.forward(from: 0.0);
                      _model.isAnimated = true;
                    }
                  } else if (info.visibleFraction <= 0) {
                    if (widgetAnimate != null) {
                      await widgetAnimate.controller.reverse(from: 0.0);
                      _model.isAnimated = false;
                    }
                  }
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'นำเสนอเส้นทางของฉันในโลก\nของการเขียนโค้ดและการออกแบบ',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 46.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ).animateOnActionTrigger(
                    animationsMap['rowOnActionTriggerAnimation1']!,
                  ),
                ),
              ),
              VisibilityDetector(
                key: Key('containerOnActionTriggerAnimation'),
                onVisibilityChanged: (VisibilityInfo info) async {
                  AnimationInfo? widgetAnimate = animationsMap['containerOnActionTriggerAnimation'];
                  if (info.visibleFraction > 0.5) {
                    if (widgetAnimate != null && !_model.isAnimated2) {
                      await widgetAnimate.controller.forward(from: 0.0);
                      _model.isAnimated2 = true;
                    }
                  } else if (info.visibleFraction <= 0) {
                    if (widgetAnimate != null) {
                      await widgetAnimate.controller.reverse(from: 0.0);
                      _model.isAnimated2 = false;
                    }
                  }
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Container(
                    width: 150.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation']!,
                  ),
                ),
              ),
              VisibilityDetector(
                key: Key('rowOnActionTriggerAnimation2'),
                onVisibilityChanged: (VisibilityInfo info) async {
                  AnimationInfo? widgetAnimate = animationsMap['rowOnActionTriggerAnimation2'];
                  if (info.visibleFraction > 0.5) {
                    if (widgetAnimate != null && !_model.isAnimated3) {
                      await widgetAnimate.controller.forward(from: 0.0);
                      _model.isAnimated3 = true;
                    }
                  } else if (info.visibleFraction <= 0) {
                    if (widgetAnimate != null) {
                      await widgetAnimate.controller.reverse(from: 0.0);
                      _model.isAnimated3 = false;
                    }
                  }
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'สำรวจโปรเจกต์ ทักษะ และความหลงใหลที่ผลักดันความคิดสร้างสรรค์ของฉัน\nมาร่วมเปลี่ยนไอเดียให้กลายเป็นโซลูชันที่มีผลกระทบด้วยกัน',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ).animateOnActionTrigger(
                    animationsMap['rowOnActionTriggerAnimation2']!,
                  ),
                ),
              ),
              VisibilityDetector(
                key: Key('buttonOnActionTriggerAnimation1'),
                onVisibilityChanged: (VisibilityInfo info) async {
                  AnimationInfo? widgetAnimate = animationsMap['buttonOnActionTriggerAnimation1'];
                  AnimationInfo? widgetAnimate2 = animationsMap['buttonOnActionTriggerAnimation2'];
                  if (info.visibleFraction > 0.5) {
                    if (widgetAnimate != null && !_model.isAnimated4) {
                       widgetAnimate.controller.forward(from: 0.0);
                      _model.isAnimated4 = true;
                    }
                    if (widgetAnimate2 != null && !_model.isAnimated5) {
                      await widgetAnimate2.controller.forward(from: 0.0);
                      _model.isAnimated5 = true;
                    }
                  } else if (info.visibleFraction <= 0) {
                    if (widgetAnimate != null) {
                       widgetAnimate.controller.reverse(from: 0.0);
                      _model.isAnimated4 = false;
                    }
                    if (widgetAnimate2 != null) {
                      await widgetAnimate2.controller.reverse(from: 0.0);
                      _model.isAnimated5 = false;
                    }
                  }
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Future.delayed(
                                const Duration(milliseconds: 1));
                            scrollToSection(FFAppState().aboutKey);
                          },
                          text: 'About',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ).animateOnActionTrigger(
                          animationsMap['buttonOnActionTriggerAnimation1']!,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Future.delayed(
                                const Duration(milliseconds: 1));
                            scrollToSection(FFAppState().portfolioKey);
                          },
                          text: 'Portfolio',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ).animateOnActionTrigger(
                          animationsMap['buttonOnActionTriggerAnimation2']!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
