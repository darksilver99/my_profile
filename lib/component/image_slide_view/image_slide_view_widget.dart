import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_slide_view_model.dart';
export 'image_slide_view_model.dart';

class ImageSlideViewWidget extends StatefulWidget {
  const ImageSlideViewWidget({
    super.key,
    required this.imageList,
    required this.imageIndex,
  });

  final List<String>? imageList;
  final int? imageIndex;

  @override
  State<ImageSlideViewWidget> createState() => _ImageSlideViewWidgetState();
}

class _ImageSlideViewWidgetState extends State<ImageSlideViewWidget> {
  late ImageSlideViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageSlideViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 36.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 32.0),
                child: Builder(
                  builder: (context) {
                    final imageListView = widget!.imageList!.toList();

                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: imageListView.length,
                        itemBuilder: (context, imageListViewIndex, _) {
                          final imageListViewItem =
                              imageListView[imageListViewIndex];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/825/600',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        carouselController: _model.carouselController ??=
                            CarouselController(),
                        options: CarouselOptions(
                          initialPage: max(
                              0,
                              min(
                                  valueOrDefault<int>(
                                    widget!.imageIndex,
                                    0,
                                  ),
                                  imageListView.length - 1)),
                          viewportFraction: 0.8,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.2,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index, _) =>
                              _model.carouselCurrentIndex = index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
