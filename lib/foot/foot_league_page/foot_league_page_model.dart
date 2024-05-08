import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'foot_league_page_widget.dart' show FootLeaguePageWidget;
import 'package:flutter/material.dart';

class FootLeaguePageModel extends FlutterFlowModel<FootLeaguePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getLeagues)] action in footLeaguePage widget.
  ApiCallResponse? apiResultg74;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
