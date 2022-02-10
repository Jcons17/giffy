import 'dart:convert';

import 'package:giffy/env/environments.dart';
import 'package:giffy/models/gifs.dart';
import 'package:http/http.dart' as http;

class HttpGifs {
  static final String _apiKey = Enviroments.apiKey;
  static final String _apiUrl = Enviroments.apiUrl;

  static Future<List<GifsModel>> fetchGifs(String keyword) async {
    // ignore: unnecessary_brace_in_string_interps
    Uri url = Uri.parse("${_apiUrl}?api_key=${_apiKey}&q=${keyword}&limit=5");

    var response = await http.Client().get(url,
        headers: <String, String>{'Content-Type': 'application/json'});

    var jsonGifTmp = jsonDecode(response.body)["data"] as List<dynamic>;
    //var jsonGif = jsonEncode(jsonGifTmp);
    //var listaIterable = jsonDecode(jsonGif);
    //print(jsonGifTmp[0]);
    var gif = jsonGifTmp[0];

    final lista = List<GifsModel>.from(jsonGifTmp.map(GifsModel.fromMap));

    if (response.statusCode == 200) {}

    return lista;
  }
}
