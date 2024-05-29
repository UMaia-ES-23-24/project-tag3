import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lolzinho_players_list_widget.dart' show LolzinhoPlayersListWidget;
import 'package:flutter/material.dart';

class LolzinhoPlayersListModel
    extends FlutterFlowModel<LolzinhoPlayersListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (league get players)] action in LolzinhoPlayersList widget.
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
