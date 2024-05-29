import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _initialSearch = prefs.getString('ff_initialSearch') ?? _initialSearch;
    });
    _safeInit(() {
      _Favorites = prefs.getStringList('ff_Favorites') ?? _Favorites;
    });
    _safeInit(() {
      _idlegal = prefs.getInt('ff_idlegal') ?? _idlegal;
    });
    _safeInit(() {
      _videoURL = prefs.getString('ff_videoURL') ?? _videoURL;
    });
    _safeInit(() {
      _playerID = prefs.getInt('ff_playerID') ?? _playerID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Search = '';
  String get Search => _Search;
  set Search(String value) {
    _Search = value;
  }

  bool _hasFavorites = false;
  bool get hasFavorites => _hasFavorites;
  set hasFavorites(bool value) {
    _hasFavorites = value;
  }

  String _initialSearch = '';
  String get initialSearch => _initialSearch;
  set initialSearch(String value) {
    _initialSearch = value;
    prefs.setString('ff_initialSearch', value);
  }

  List<dynamic> _searchLeagues = [];
  List<dynamic> get searchLeagues => _searchLeagues;
  set searchLeagues(List<dynamic> value) {
    _searchLeagues = value;
  }

  void addToSearchLeagues(dynamic value) {
    _searchLeagues.add(value);
  }

  void removeFromSearchLeagues(dynamic value) {
    _searchLeagues.remove(value);
  }

  void removeAtIndexFromSearchLeagues(int index) {
    _searchLeagues.removeAt(index);
  }

  void updateSearchLeaguesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _searchLeagues[index] = updateFn(_searchLeagues[index]);
  }

  void insertAtIndexInSearchLeagues(int index, dynamic value) {
    _searchLeagues.insert(index, value);
  }

  List<dynamic> _listaLolzinho = [];
  List<dynamic> get listaLolzinho => _listaLolzinho;
  set listaLolzinho(List<dynamic> value) {
    _listaLolzinho = value;
  }

  void addToListaLolzinho(dynamic value) {
    _listaLolzinho.add(value);
  }

  void removeFromListaLolzinho(dynamic value) {
    _listaLolzinho.remove(value);
  }

  void removeAtIndexFromListaLolzinho(int index) {
    _listaLolzinho.removeAt(index);
  }

  void updateListaLolzinhoAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listaLolzinho[index] = updateFn(_listaLolzinho[index]);
  }

  void insertAtIndexInListaLolzinho(int index, dynamic value) {
    _listaLolzinho.insert(index, value);
  }

  List<String> _Favorites = [];
  List<String> get Favorites => _Favorites;
  set Favorites(List<String> value) {
    _Favorites = value;
    prefs.setStringList('ff_Favorites', value);
  }

  void addToFavorites(String value) {
    _Favorites.add(value);
    prefs.setStringList('ff_Favorites', _Favorites);
  }

  void removeFromFavorites(String value) {
    _Favorites.remove(value);
    prefs.setStringList('ff_Favorites', _Favorites);
  }

  void removeAtIndexFromFavorites(int index) {
    _Favorites.removeAt(index);
    prefs.setStringList('ff_Favorites', _Favorites);
  }

  void updateFavoritesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Favorites[index] = updateFn(_Favorites[index]);
    prefs.setStringList('ff_Favorites', _Favorites);
  }

  void insertAtIndexInFavorites(int index, String value) {
    _Favorites.insert(index, value);
    prefs.setStringList('ff_Favorites', _Favorites);
  }

  int _idlegal = 0;
  int get idlegal => _idlegal;
  set idlegal(int value) {
    _idlegal = value;
    prefs.setInt('ff_idlegal', value);
  }

  bool _falhouCall = false;
  bool get falhouCall => _falhouCall;
  set falhouCall(bool value) {
    _falhouCall = value;
  }

  List<dynamic> _leagueSelectedLeague = [];
  List<dynamic> get leagueSelectedLeague => _leagueSelectedLeague;
  set leagueSelectedLeague(List<dynamic> value) {
    _leagueSelectedLeague = value;
  }

  void addToLeagueSelectedLeague(dynamic value) {
    _leagueSelectedLeague.add(value);
  }

  void removeFromLeagueSelectedLeague(dynamic value) {
    _leagueSelectedLeague.remove(value);
  }

  void removeAtIndexFromLeagueSelectedLeague(int index) {
    _leagueSelectedLeague.removeAt(index);
  }

  void updateLeagueSelectedLeagueAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _leagueSelectedLeague[index] = updateFn(_leagueSelectedLeague[index]);
  }

  void insertAtIndexInLeagueSelectedLeague(int index, dynamic value) {
    _leagueSelectedLeague.insert(index, value);
  }

  String _videoURL = '';
  String get videoURL => _videoURL;
  set videoURL(String value) {
    _videoURL = value;
    prefs.setString('ff_videoURL', value);
  }

  int _playerID = 0;
  int get playerID => _playerID;
  set playerID(int value) {
    _playerID = value;
    prefs.setInt('ff_playerID', value);
  }

  List<dynamic> _fixtures = [];
  List<dynamic> get fixtures => _fixtures;
  set fixtures(List<dynamic> value) {
    _fixtures = value;
  }

  void addToFixtures(dynamic value) {
    _fixtures.add(value);
  }

  void removeFromFixtures(dynamic value) {
    _fixtures.remove(value);
  }

  void removeAtIndexFromFixtures(int index) {
    _fixtures.removeAt(index);
  }

  void updateFixturesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _fixtures[index] = updateFn(_fixtures[index]);
  }

  void insertAtIndexInFixtures(int index, dynamic value) {
    _fixtures.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
