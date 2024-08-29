import '/backend/backend.dart';
import '/component/project_detail_view/project_detail_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_block_view_model.dart';
export 'project_block_view_model.dart';

class ProjectBlockViewWidget extends StatefulWidget {
  const ProjectBlockViewWidget({
    super.key,
    required this.projectDoc,
  });

  final ProjectListRecord? projectDoc;

  @override
  State<ProjectBlockViewWidget> createState() => _ProjectBlockViewWidgetState();
}

class _ProjectBlockViewWidgetState extends State<ProjectBlockViewWidget> {
  late ProjectBlockViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectBlockViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await showDialog(
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                child: ProjectDetailViewWidget(
                  projectDoc: widget!.projectDoc!,
                ),
              );
            },
          );
        },
        child: Container(
          width: 400.0,
          height: 350.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network(
                    widget!.projectDoc!.images.first,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (_model.isHover)
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x7F14181B),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget!.projectDoc?.subject,
                            '-',
                          ),
                          maxLines: 2,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            onEnter: ((event) async {
              setState(() => _model.mouseRegionHovered = true);
              _model.isHover = true;
              setState(() {});
            }),
            onExit: ((event) async {
              setState(() => _model.mouseRegionHovered = false);
              _model.isHover = false;
              setState(() {});
            }),
          ),
        ),
      ),
    );
  }
}
