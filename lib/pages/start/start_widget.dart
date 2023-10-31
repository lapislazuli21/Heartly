import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'start_model.dart';
export 'start_model.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget>
    with TickerProviderStateMixin {
  late StartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.3, 1.3),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).cosmicLatte,
              FlutterFlowTheme.of(context).roseRed
            ],
            stops: [0.0, 0.95],
            begin: AlignmentDirectional(1.0, -1.0),
            end: AlignmentDirectional(-1.0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cardiogram.png',
              width: 140.0,
              height: 140.0,
              fit: BoxFit.fitHeight,
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Heart',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).cosmicLatte,
                        ),
                  ),
                  Text(
                    'ly',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Raleway',
                          color: Color(0xFFD3004F),
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 140.0),
              child: Text(
                'Listening to every beat ',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).cosmicLatte,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.goNamed(
                  'HomePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 500),
                    ),
                  },
                );
              },
              text: 'Let\'s Begin',
              options: FFButtonOptions(
                width: 130.0,
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                color: FlutterFlowTheme.of(context).cosmicLatte,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).iris,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
                hoverColor: FlutterFlowTheme.of(context).cosmicLatte,
                hoverBorderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).cosmicLatte,
                  width: 1.0,
                ),
                hoverTextColor: FlutterFlowTheme.of(context).folly,
                hoverElevation: 5.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
