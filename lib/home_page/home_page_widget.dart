import 'package:flutter/rendering.dart';
import 'package:my_profile/custom_toon/solo.dart';

import '/backend/backend.dart';
import '/component/footer/footer_widget.dart';
import '/component/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sections/section1/section1_widget.dart';
import '/sections/section2/section2_widget.dart';
import '/sections/section3/section3_widget.dart';
import '/sections/section4/section4_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.configResult = await queryMyProfileConfigRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.isLoading = false;
      setState(() {});

      await _model.configResult!.reference.update({
        ...mapToFirestore(
          {
            'hits': FieldValue.increment(1),
          },
        ),
      });

      FFAppState().scrollController = _scrollController;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));

    _scrollController.addListener(() {
      double scrollPosition = _scrollController.offset;
      if (_scrollController.position.userScrollDirection != ScrollDirection.idle) {
        print(scrollPosition);
        // Do something when the user starts scrolling
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.section1Model,
                      updateCallback: () => setState(() {}),
                      child: Section1Widget(),
                    ),
                    wrapWithModel(
                      model: _model.section2Model,
                      updateCallback: () => setState(() {}),
                      child: Section2Widget(),
                    ),
                    wrapWithModel(
                      model: _model.section3Model,
                      updateCallback: () => setState(() {}),
                      child: Section3Widget(),
                    ),
                    wrapWithModel(
                      model: _model.section4Model,
                      updateCallback: () => setState(() {}),
                      child: Section4Widget(),
                    ),
                    if (!_model.isLoading)
                      wrapWithModel(
                        model: _model.footerModel,
                        updateCallback: () => setState(() {}),
                        child: FooterWidget(
                          configDoc: _model.configResult!,
                        ),
                      ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => setState(() {}),
                child: NavbarWidget(),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await Future.delayed(const Duration(milliseconds: 1));
                      scrollToTop();
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0x94000000),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 36.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
