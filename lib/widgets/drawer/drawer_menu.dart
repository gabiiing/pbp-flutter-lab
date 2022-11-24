import 'package:flutter/material.dart';
import 'package:counter_7/page/counter/counter_7.dart';
import 'package:counter_7/page/budget/budget_form.dart';
import 'package:counter_7/page/budget/budget_list.dart';
import 'package:counter_7/page/watchlist/watchlist_view.dart';

// Refactor
class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});
  final title = "Menu";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Counter7App()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Data'),
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FormBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BudgetListPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchlistView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
