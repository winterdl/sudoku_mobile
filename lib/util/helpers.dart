import 'package:shared_preferences/shared_preferences.dart';
import 'package:lettuce_sudoku/util/globals.dart' as globals;

Future<bool> readFromPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  // final legality = prefs.getBool('doLegality');
  final peerCells = prefs.getBool('doPeerCells');
  final peerDigits = prefs.getBool('doPeerDigits');
  final mistakes = prefs.getBool('doMistakes');
  final hints = prefs.getInt('initialHints');
  final legality = prefs.getInt('legalityRadio');
  // globals.doLegality.value = legality != null ? legality : false;
  globals.doPeerCells.value = peerCells != null ? peerCells : true;
  globals.doPeerDigits.value = peerDigits != null ? peerDigits : true;
  globals.doMistakes.value = mistakes != null ? mistakes : true;
  globals.initialHints.value = hints != null ? hints : 30;
  globals.legalityRadio.value = legality == 1 || legality == 0 ? legality : 0;
  return true;
}