import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'foot_players_widget.dart' show FootPlayersWidget;
import 'package:flutter/material.dart';

class FootPlayersModel extends FlutterFlowModel<FootPlayersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getplayersFoot)] action in FootPlayers widget.
  ApiCallResponse? apiResultg74;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
