import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_s_g_o_player_list_widget.dart' show CSGOPlayerListWidget;
import 'package:flutter/material.dart';

class CSGOPlayerListModel extends FlutterFlowModel<CSGOPlayerListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CSGO Players)] action in CSGOPlayerList widget.
  ApiCallResponse? apiResultmov;
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
