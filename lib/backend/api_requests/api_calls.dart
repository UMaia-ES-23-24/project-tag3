import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetLeaguesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getLeagues',
      apiUrl:
          'https://raw.githubusercontent.com/UMaia-ES-23-24/project-tag3/main/getleagues.json?token=GHSAT0AAAAAACOPZ2FKF2ZQVRDQUBZ6XHWEZTAV6MA',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "league",
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
  static List<int>? serieid(dynamic response) => (getJsonField(
        response,
        r'''$[:].serie_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class LegueGetSeriesCall {
  static Future<ApiCallResponse> call({
    int? filter = 7020,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'legue get series',
      apiUrl: 'https://api.pandascore.co/lol/matches',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
      },
      params: {
        'filter[serie_id]': filter,
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
  static String? rawURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].streams_list[:].raw_url''',
      ));
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

  static dynamic players(dynamic response) => getJsonField(
        response,
        r'''$.*''',
      );
}

class GetStandingsAntigoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStandingsAntigo',
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

class FootStandingsCall {
  static Future<ApiCallResponse> call({
    String? league = '39',
    String? season = '2023',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FootStandings',
      apiUrl: 'https://api-football-v1.p.rapidapi.com/v3/standings',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '94cc702bcdmsh9bf2fc562936d5ap156bd3jsn1a8eba97d1ba',
        'X-RapidAPI-Host': 'api-football-v1.p.rapidapi.com',
      },
      params: {
        'league': league,
        'season': season,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? tudo(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.standings[:][:]''',
        true,
      ) as List?;
}

class BasketCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Basket',
      apiUrl:
          'https://basketapi1.p.rapidapi.com/api/basketball/tournament/all/category/264',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '2ddc658eedmsh5945739df921403p121165jsne13a1c9cfcf3',
        'X-RapidAPI-Host': 'basketapi1.p.rapidapi.com',
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

class GetLeagueStatsCall {
  static Future<ApiCallResponse> call({
    String? teamid = '126061',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get league stats',
      apiUrl: 'https://api.pandascore.co/lol/teams/{team_id_or_slug}/stats',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
      },
      params: {
        'TEAMID': teamid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFixturesIdUmCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFixturesIdUm',
      apiUrl:
          'https://raw.githubusercontent.com/UMaia-ES-23-24/project-tag3/main/fixturesId1?token=GHSAT0AAAAAACSLJEMSFOV7R2ESW2LCUS6GZSOGCNQ',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? fixtures(dynamic response) => getJsonField(
        response,
        r'''$.api.fixtures[*]''',
        true,
      ) as List?;
}

class CSGOGetTournamentCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CSGO get Tournament',
      apiUrl: 'https://api.pandascore.co/csgo/tournaments',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? cSGOTourney(dynamic response) => getJsonField(
        response,
        r'''$.*''',
        true,
      ) as List?;
  static List? cSGOMathces(dynamic response) => getJsonField(
        response,
        r'''$.*.matches.*''',
        true,
      ) as List?;
}

class CSGOGetMatchCall {
  static Future<ApiCallResponse> call({
    int? filter = 4849,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CSGO get Match',
      apiUrl: 'https://api.pandascore.co/csgo/matches',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MUJ92DYWwDbH_c1OT5JQ5qdVs232pMbGba-AWS6nhqi6LgB695g',
      },
      params: {
        'filter[serie_id]': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? cSGOMatchInfo(dynamic response) => getJsonField(
        response,
        r'''$.*''',
        true,
      ) as List?;
}

class CSGOPlayersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CSGO Players',
      apiUrl: 'https://api.pandascore.co/csgo/players',
      callType: ApiCallType.GET,
      headers: {
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

  static List? players(dynamic response) => getJsonField(
        response,
        r'''$.*''',
        true,
      ) as List?;
}

class GetplayersFootCall {
  static Future<ApiCallResponse> call({
    String? league = '61',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getplayersFoot',
      apiUrl: 'https://api-football-v1.p.rapidapi.com/v3/players',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-RapidAPI-Key': '94cc702bcdmsh9bf2fc562936d5ap156bd3jsn1a8eba97d1ba',
      },
      params: {
        'season': "2023",
        'league': league,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? players(dynamic response) => getJsonField(
        response,
        r'''$.response.*''',
        true,
      ) as List?;
}

class GetLigasFoootCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetLigasFooot',
      apiUrl: 'https://api-football-v1.p.rapidapi.com/v3/leagues',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-RapidAPI-Key': '94cc702bcdmsh9bf2fc562936d5ap156bd3jsn1a8eba97d1ba',
      },
      params: {
        'type': "league",
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
