import '/flutter_flow/flutter_flow_util.dart';
import 'videoplayer_league_widget.dart' show VideoplayerLeagueWidget;
import 'package:flutter/material.dart';

class VideoplayerLeagueModel extends FlutterFlowModel<VideoplayerLeagueWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
