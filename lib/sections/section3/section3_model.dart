import '/backend/backend.dart';
import '/component/project_block_view/project_block_view_widget.dart';
import '/component/project_list_view/project_list_view_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'section3_widget.dart' show Section3Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Section3Model extends FlutterFlowModel<Section3Widget> {
  ///  Local state fields for this component.

  List<ProjectListRecord> projectList = [];
  void addToProjectList(ProjectListRecord item) => projectList.add(item);
  void removeFromProjectList(ProjectListRecord item) =>
      projectList.remove(item);
  void removeAtIndexFromProjectList(int index) => projectList.removeAt(index);
  void insertAtIndexInProjectList(int index, ProjectListRecord item) =>
      projectList.insert(index, item);
  void updateProjectListAtIndex(
          int index, Function(ProjectListRecord) updateFn) =>
      projectList[index] = updateFn(projectList[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in section3 widget.
  List<ProjectListRecord>? rsProject;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
