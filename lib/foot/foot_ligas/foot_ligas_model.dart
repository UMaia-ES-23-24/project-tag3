import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'foot_ligas_widget.dart' show FootLigasWidget;
import 'package:flutter/material.dart';

class FootLigasModel extends FlutterFlowModel<FootLigasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getLeagues)] action in FootLigas widget.
  ApiCallResponse? apiResultyh0;
  // State field(s) for searchTerm widget.
  FocusNode? searchTermFocusNode;
  TextEditingController? searchTermTextController;
  String? Function(BuildContext, String?)? searchTermTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchTermFocusNode?.dispose();
    searchTermTextController?.dispose();
  }
}
