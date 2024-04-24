import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lolzinho_ligas_widget.dart' show LolzinhoLigasWidget;
import 'package:flutter/material.dart';

class LolzinhoLigasModel extends FlutterFlowModel<LolzinhoLigasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getEsport)] action in LolzinhoLigas widget.
  ApiCallResponse? apiResultmov;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
