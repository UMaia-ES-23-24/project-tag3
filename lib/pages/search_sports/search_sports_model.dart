import '/flutter_flow/flutter_flow_util.dart';
import 'search_sports_widget.dart' show SearchSportsWidget;
import 'package:flutter/material.dart';

class SearchSportsModel extends FlutterFlowModel<SearchSportsWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
