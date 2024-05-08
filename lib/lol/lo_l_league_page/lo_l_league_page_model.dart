import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lo_l_league_page_widget.dart' show LoLLeaguePageWidget;
import 'package:flutter/material.dart';

class LoLLeaguePageModel extends FlutterFlowModel<LoLLeaguePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (legue get series)] action in LoLLeaguePage widget.
  ApiCallResponse? apiResultg74;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
