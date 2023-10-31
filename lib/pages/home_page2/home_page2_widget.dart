import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page2_model.dart';
export 'home_page2_model.dart';

class HomePage2Widget extends StatefulWidget {
  const HomePage2Widget({Key? key}) : super(key: key);

  @override
  _HomePage2WidgetState createState() => _HomePage2WidgetState();
}

class _HomePage2WidgetState extends State<HomePage2Widget>
    with TickerProviderStateMixin {
  late HomePage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePage2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).roseRed,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_outlined,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation']!),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Text(
              'Let\'s listen to your heart',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).cosmicLatte,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Text(
                    'Now, let\'s find out about your..',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFD3004F),
                          fontSize: 20.0,
                        ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowDropDown<int>(
                          controller: _model.sexValueController ??=
                              FormFieldController<int>(null),
                          options: [0, 1],
                          optionLabels: ['Female', 'Male'],
                          onChanged: (val) =>
                              setState(() => _model.sexValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: ' Sex',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        FlutterFlowDropDown<int>(
                          controller: _model.fbsValueController ??=
                              FormFieldController<int>(null),
                          options: [1, 0],
                          optionLabels: [
                            'Greater than 120 (> 120)',
                            'Lesser than 120 (< 120)'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.fbsValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: 'Fasting Blood Sugar (FBS)',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        FlutterFlowDropDown<int>(
                          controller: _model.cpValueController ??=
                              FormFieldController<int>(null),
                          options: [4, 2, 3, 1],
                          optionLabels: [
                            '0: Asymptomatic',
                            '1: Atypical Angina',
                            '2: Non-Anginal Pain',
                            '3: Typical Angina'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.cpValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: 'Chest Pain (CP) Type',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        FlutterFlowDropDown<int>(
                          controller: _model.ecgValueController ??=
                              FormFieldController<int>(null),
                          options: [2, 0, 1],
                          optionLabels: [
                            'Probable or definite left ventricular hypertrophy by Estes’ criteria',
                            'Normal',
                            'ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.ecgValue = val),
                          width: double.infinity,
                          height: 80.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: 'Rest ECG',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        FlutterFlowDropDown<int>(
                          controller: _model.exangValueController ??=
                              FormFieldController<int>(null),
                          options: [1, 0],
                          optionLabels: ['Yes', 'No'],
                          onChanged: (val) =>
                              setState(() => _model.exangValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: 'Exercise Angina (exang)',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        FlutterFlowDropDown<int>(
                          controller: _model.slopeSTValueController ??=
                              FormFieldController<int>(null),
                          options: [3, 2, 1],
                          optionLabels: ['Downsloping', 'Flat', 'Upsloping'],
                          onChanged: (val) =>
                              setState(() => _model.slopeSTValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: 'Slope of ST',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        FlutterFlowDropDown<int>(
                          controller: _model.numVessValueController ??=
                              FormFieldController<int>(null),
                          options: [0, 1, 2, 3],
                          optionLabels: ['0', '1', '2', '3'],
                          onChanged: (val) =>
                              setState(() => _model.numVessValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).folly,
                                  ),
                          hintText: 'Number of Blood Vessels (CA)',
                          searchHintText: '',
                          fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).iris,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 2.0),
                          child: FlutterFlowDropDown<int>(
                            controller: _model.thalValueController ??=
                                FormFieldController<int>(null),
                            options: [6, 3, 7],
                            optionLabels: [
                              'Fixed Defect',
                              'Normal Blood Flow',
                              'Reversible Defect'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.thalValue = val),
                            width: double.infinity,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).folly,
                                    ),
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).folly,
                                    ),
                            hintText: 'Thallium',
                            searchHintText: '',
                            fillColor: FlutterFlowTheme.of(context).cosmicLatte,
                            elevation: 0.0,
                            borderColor: Color(0xFF5448C8),
                            borderWidth: 0.0,
                            borderRadius: 0.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).iris,
                  borderRadius: 30.0,
                  borderWidth: 2.0,
                  buttonSize: 60.0,
                  hoverColor: FlutterFlowTheme.of(context).cosmicLatte,
                  hoverIconColor: Color(0xFFD3004F),
                  icon: FaIcon(
                    FontAwesomeIcons.heartbeat,
                    color: FlutterFlowTheme.of(context).accent2,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    _model.getpred = await GetPredictionCall.call(
                      age: FFAppState().age,
                      sex: _model.sexValue,
                      cp: _model.cpValue,
                      bp: FFAppState().bp,
                      chol: FFAppState().chol,
                      fbs: _model.fbsValue,
                      ekg: _model.ecgValue,
                      maxhr: FFAppState().maxhr,
                      exang: _model.exangValue,
                      stdep: FFAppState().stdep,
                      slopest: _model.slopeSTValue,
                      numves: _model.numVessValue,
                      thal: _model.thalValue,
                    );
                    if ((_model.getpred?.succeeded ?? true)) {
                      FFAppState().Result =
                          (_model.getpred?.jsonBody ?? '').toString();
                      FFAppState().age = 0;
                      FFAppState().bp = 0;
                      FFAppState().chol = 0;
                      FFAppState().fbs = 0;
                      FFAppState().maxhr = 0;
                      FFAppState().stdep = 0.0;

                      context.pushNamed(
                        'Result',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 500),
                          ),
                        },
                      );
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Failed'),
                            content: Text('Please try again!'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    }

                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
