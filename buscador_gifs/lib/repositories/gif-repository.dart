import 'dart:convert';

import 'package:dio/dio.dart';

class GifRepository {
  int _offset = 0;

  Future<Map> getSearchGifs(String search) async {
    Response response;

    if (search == null) {
      response = await Dio().get(
          "https://api.giphy.com/v1/gifs/trending?api_key=uTTN01Ox1S9mhEd8BQKmy1EyjFngJrP5&limit=20&rating=G");
    } else {
      response = await Dio().get(
          "https://api.giphy.com/v1/gifs/search?api_key=uTTN01Ox1S9mhEd8BQKmy1EyjFngJrP5&q=$search&limit=20&offset=$_offset&rating=G&lang=pt");
    }

    return json.decode(response.data);
  }
}
