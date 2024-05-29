import '/flutter_flow/flutter_flow_util.dart';
import 'league_players_widget.dart' show LeaguePlayersWidget;
import 'package:flutter/material.dart';

class LeaguePlayersModel extends FlutterFlowModel<LeaguePlayersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}