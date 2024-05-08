import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetLeaguesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getLeagues',
      apiUrl:
          'https://raw.githubusercontent.com/UMaia-ES-23-24/project-tag3/main/standings.json?token=GHSAT0AAAAAACRNXJS5G3WCCMSTJXUJOQLYZR3VQTA',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'season': 2020,
        'league': 39,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? ligas(dynamic response) => getJsonField(
        response,
        r'''$.response.*''',
        true,
      ) as List?;
}

class GetEsportCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEsport',
      apiUrl: 'https://api.pandascore.co/lol/tournaments',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? names(dynamic response) => getJsonField(
        response,
        r'''$.*''',
        true,
      ) as List?;
}

class LegueGetSeriesCall {
  static Future<ApiCallResponse> call({
    int? id = 7020,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'legue get series',
      apiUrl: 'https://api.pandascore.co/series/$id/matches',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? seriesInfo(dynamic response) => getJsonField(
        response,
        r'''$.*''',
        true,
      ) as List?;
}

class LeagueGetPlayersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'league get players',
      apiUrl: 'https://api.pandascore.co/lol/players',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStandingsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStandings',
      apiUrl: 'https://api-football-v1.p.rapidapi.com/v3/standings',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '94cc702bcdmsh9bf2fc562936d5ap156bd3jsn1a8eba97d1ba',
        'X-RapidAPI-Host': 'api-football-v1.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
