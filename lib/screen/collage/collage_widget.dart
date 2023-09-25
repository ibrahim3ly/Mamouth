import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'collage_model.dart';
export 'collage_model.dart';

class CollageWidget extends StatefulWidget {
  const CollageWidget({Key? key}) : super(key: key);

  @override
  _CollageWidgetState createState() => _CollageWidgetState();
}

class _CollageWidgetState extends State<CollageWidget>
    with TickerProviderStateMixin {
  late CollageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CollageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    FFIcons.kax,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Home');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Text(
                  'Photo Collage',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                child: Image.asset(
                  'assets/images/printer_8835519.png',
                  width: 28.0,
                  height: 25.0,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF6F3F3),
                                  ),
                                  child: MasonryGridView.count(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    itemCount: 0,
                                    itemBuilder: (context, index) {
                                      return [][index]();
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 85.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/images/display.png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Image.asset(
                                            'assets/images/display_(2).png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Image.asset(
                                            'assets/images/layout_(4).png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.contain,
                                          ),
                                          Image.asset(
                                            'assets/images/layout_(5).png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Image.asset(
                                            'assets/images/layout_(2).png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                          Image.asset(
                                            'assets/images/layout_(8).png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ].divide(SizedBox(width: 5.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 1.0)),
                          ),
                          GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/424/600',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/132/600',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/825/600',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14.0,
                                ),
                        unselectedLabelStyle: TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                        tabs: [
                          Tab(
                            text: 'Template',
                          ),
                          Tab(
                            text: 'PicStrip',
                          ),
                          Tab(
                            text: 'FreeStyle',
                          ),
                        ],
                        controller: _model.tabBarController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
