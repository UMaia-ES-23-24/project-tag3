import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lolzinho_ligas_widget.dart' show LolzinhoLigasWidget;
import 'package:flutter/material.dart';

class LolzinhoLigasModel extends FlutterFlowModel<LolzinhoLigasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getEsport)] action in LolzinhoLigas widget.
  ApiCallResponse? apiResultmov;
  // State field(s) for searchTerm widget.
  FocusNode? searchTermFocusNode;
  TextEditingController? searchTermTextController;
  String? Function(BuildContext, String?)? searchTermTextControllerValidator;
  // Stores action output result for [Backend Call - API (getEsport)] action in searchTerm widget.
  ApiCallResponse? apiResult3se;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchTermFocusNode?.dispose();
    searchTermTextController?.dispose();
  }
}
