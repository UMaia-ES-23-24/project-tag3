import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_s_g_o_matches_widget.dart' show CSGOMatchesWidget;
import 'package:flutter/material.dart';

class CSGOMatchesModel extends FlutterFlowModel<CSGOMatchesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CSGO get Match)] action in CSGOMatches widget.
  ApiCallResponse? apiResultg74;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
