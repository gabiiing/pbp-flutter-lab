import 'package:counter_7/model/budget/budget.dart';
import 'package:counter_7/model/watchlist/watchlist.dart';
import 'package:counter_7/page/watchlist/watchlist_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WatchListData {
  Future<List<Watchlist>> getWatchList() async {
    var url =
        Uri.parse('https://gabing-pbp-tugas2.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<Watchlist> myWatchList = [];
    for (var d in data) {
      if (d != null) {
        myWatchList.add(Watchlist.fromJson(d));
      }
    }
    print(myWatchList.toString());
    return myWatchList;
  }
}
