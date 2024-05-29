import '/flutter_flow/flutter_flow_util.dart';
import 'c_s_g_o_video_player_widget.dart' show CSGOVideoPlayerWidget;
import 'package:flutter/material.dart';

class CSGOVideoPlayerModel extends FlutterFlowModel<CSGOVideoPlayerWidget> {
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
