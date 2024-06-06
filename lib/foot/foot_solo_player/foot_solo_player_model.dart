import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'foot_solo_player_widget.dart' show FootSoloPlayerWidget;
import 'package:flutter/material.dart';

class FootSoloPlayerModel extends FlutterFlowModel<FootSoloPlayerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getplayersFoot)] action in FootSoloPlayer widget.
  ApiCallResponse? apiResultg74;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
