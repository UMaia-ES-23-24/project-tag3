import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'c_s_g_o_video_player_model.dart';
export 'c_s_g_o_video_player_model.dart';

class CSGOVideoPlayerWidget extends StatefulWidget {
  const CSGOVideoPlayerWidget({
    super.key,
    required this.leagueInfoDoJogoSelecionado,
  });

  final dynamic leagueInfoDoJogoSelecionado;

  @override
  State<CSGOVideoPlayerWidget> createState() => _CSGOVideoPlayerWidgetState();
}

class _CSGOVideoPlayerWidgetState extends State<CSGOVideoPlayerWidget> {
  late CSGOVideoPlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CSGOVideoPlayerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).allWhite,
                size: 30.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Text(
              'Video Player',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).allWhite,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowYoutubePlayer(
                url: valueOrDefault<String>(
                  FFAppState().videoURL,
                  'https://youtu.be/dQw4w9WgXcQ?si=ynRbcqh5F1QKwbrB',
                ),
                autoPlay: false,
                looping: true,
                mute: false,
                showControls: true,
                showFullScreen: true,
                strictRelatedVideos: false,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 20.0, 5.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        child: Image.network(
                          getJsonField(
                            widget.leagueInfoDoJogoSelecionado,
                            r'''$.opponents[0].opponent.image_url''',
                          ).toString(),
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '${getJsonField(
                      widget.leagueInfoDoJogoSelecionado,
                      r'''$.results[0].score''',
                    ).toString()} X ${getJsonField(
                      widget.leagueInfoDoJogoSelecionado,
                      r'''$.results[1].score''',
                    ).toString()}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 35.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 5.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        child: Image.network(
                          getJsonField(
                            widget.leagueInfoDoJogoSelecionado,
                            r'''$.opponents[1].opponent.image_url''',
                          ).toString(),
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                getJsonField(
                  widget.leagueInfoDoJogoSelecionado,
                  r'''$.name''',
                ).toString(),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final videoURL = getJsonField(
                      widget.leagueInfoDoJogoSelecionado,
                      r'''$.streams_list''',
                    ).toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: videoURL.length,
                      itemBuilder: (context, videoURLIndex) {
                        final videoURLItem = videoURL[videoURLIndex];
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'CSGOVideoPlayer',
                                    queryParameters: {
                                      'leagueInfoDoJogoSelecionado':
                                          serializeParam(
                                        widget.leagueInfoDoJogoSelecionado,
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  FFAppState().update(() {
                                    FFAppState().videoURL = getJsonField(
                                      videoURLItem,
                                      r'''$.raw_url''',
                                    ).toString();
                                  });
                                },
                                child: Text(
                                  getJsonField(
                                    videoURLItem,
                                    r'''$.raw_url''',
                                  ).toString(),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
