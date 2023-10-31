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

class HomePage2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Sex widget.
  int? sexValue;
  FormFieldController<int>? sexValueController;
  // State field(s) for FBS widget.
  int? fbsValue;
  FormFieldController<int>? fbsValueController;
  // State field(s) for CP widget.
  int? cpValue;
  FormFieldController<int>? cpValueController;
  // State field(s) for ECG widget.
  int? ecgValue;
  FormFieldController<int>? ecgValueController;
  // State field(s) for Exang widget.
  int? exangValue;
  FormFieldController<int>? exangValueController;
  // State field(s) for SlopeST widget.
  int? slopeSTValue;
  FormFieldController<int>? slopeSTValueController;
  // State field(s) for NumVess widget.
  int? numVessValue;
  FormFieldController<int>? numVessValueController;
  // State field(s) for Thal widget.
  int? thalValue;
  FormFieldController<int>? thalValueController;
  // Stores action output result for [Backend Call - API (GetPrediction)] action in IconButton widget.
  ApiCallResponse? getpred;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
