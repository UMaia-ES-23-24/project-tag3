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
      _idlegal = prefs.getInt('ff_idlegal') ?? _idlegal;
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
  }

  void addToFavorites(String value) {
    _Favorites.add(value);
  }

  void removeFromFavorites(String value) {
    _Favorites.remove(value);
  }

  void removeAtIndexFromFavorites(int index) {
    _Favorites.removeAt(index);
  }

  void updateFavoritesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Favorites[index] = updateFn(_Favorites[index]);
  }

  void insertAtIndexInFavorites(int index, String value) {
    _Favorites.insert(index, value);
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
