import '/component/footer/footer_widget.dart';
import '/component/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sections/section1/section1_widget.dart';
import '/sections/section2/section2_widget.dart';
import '/sections/section3/section3_widget.dart';
import '/sections/section4/section4_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for section1 component.
  late Section1Model section1Model;
  // Model for section2 component.
  late Section2Model section2Model;
  // Model for section3 component.
  late Section3Model section3Model;
  // Model for section4 component.
  late Section4Model section4Model;
  // Model for footer component.
  late FooterModel footerModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    section1Model = createModel(context, () => Section1Model());
    section2Model = createModel(context, () => Section2Model());
    section3Model = createModel(context, () => Section3Model());
    section4Model = createModel(context, () => Section4Model());
    footerModel = createModel(context, () => FooterModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    section1Model.dispose();
    section2Model.dispose();
    section3Model.dispose();
    section4Model.dispose();
    footerModel.dispose();
    navbarModel.dispose();
  }
}
