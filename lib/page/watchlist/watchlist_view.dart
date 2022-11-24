import 'package:counter_7/model/watchlist/watchlist.dart';
import 'package:counter_7/widgets/drawer/drawer_menu.dart';
import 'package:counter_7/data/watchlist/watchlist_data.dart';
import 'package:counter_7/page/watchlist/watchlist_detail.dart';
import 'package:flutter/material.dart';

class MyWatchlistView extends StatefulWidget {
  const MyWatchlistView({super.key});

  @override
  State<MyWatchlistView> createState() => _MyWatchlistViewState();
}

class _MyWatchlistViewState extends State<MyWatchlistView> {
  late WatchListData data;
  late Future<List<Watchlist>> _watchlist;

  @override
  void initState() {
    data = WatchListData();
    _watchlist = data.getWatchList();
    super.initState();
  }

  Text isWatched(bool watched) {
    if (watched == true) {
      return const Text(
        'Sudah ditonton',
        style: TextStyle(color: Colors.green),
      );
    } else {
      return const Text(
        'Belum ditonton',
        style: TextStyle(color: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const DrawerMenu(),
        body: FutureBuilder(
            future: _watchlist,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to do list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(snapshot.data[index].fields.title),
                            subtitle: Text(snapshot.data[index].fields.releaseDate.toString().split(" ")[0]),
                            trailing: isWatched(snapshot.data[index].fields.watched),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail(
                                          index: index,
                                          movie: snapshot.data[index])));
                            },
                          ),
                        );
                      });
                }
              }
            }));
  }
}
