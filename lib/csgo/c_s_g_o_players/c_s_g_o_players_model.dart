import '/flutter_flow/flutter_flow_util.dart';
import 'c_s_g_o_players_widget.dart' show CSGOPlayersWidget;
import 'package:flutter/material.dart';

class CSGOPlayersModel extends FlutterFlowModel<CSGOPlayersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
