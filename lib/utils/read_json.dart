import 'dart:convert';
import 'dart:io';

Future<List<dynamic>> readJsonFile(String path) async {
  var source = await File(path).readAsString();
  var data = jsonDecode(source);
  return data;
}