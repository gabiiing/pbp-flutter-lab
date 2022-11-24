import 'package:counter_7/model/watchlist/watchlist.dart';
import 'package:counter_7/widgets/drawer/drawer_menu.dart';
import 'package:counter_7/data/watchlist/watchlist_data.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final int index;
  final Watchlist movie;

  const Detail({super.key, required this.index, required this.movie});

  String isWatched(bool status) {
    if (status == true) {
      return "Sudah ditonton";
    } else {
      return "Belum ditonton";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      drawer: const DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(8)),
          Center(
            child: Text(movie.fields.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const Text("Release Date: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(movie.fields.releaseDate.toString(),
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const Text("Rating: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(movie.fields.rating.toString(),
                    style: const TextStyle(fontSize: 20)),
                const Text("/5", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const Text("Status: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(isWatched(movie.fields.watched),
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text("Review:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child:
                Text(movie.fields.review, style: const TextStyle(fontSize: 20)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}