import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ligas_foot_widget.dart' show LigasFootWidget;
import 'package:flutter/material.dart';

class LigasFootModel extends FlutterFlowModel<LigasFootWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getLeagues)] action in LigasFoot widget.
  ApiCallResponse? apiResultyh0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}