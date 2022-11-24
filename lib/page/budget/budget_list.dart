import 'package:counter_7/model/budget/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer/drawer_menu.dart';

class BudgetListPage extends StatefulWidget {
  const BudgetListPage({super.key});

  @override
  State<BudgetListPage> createState() => _BudgetListPageState();
}

class _BudgetListPageState extends State<BudgetListPage> {
  @override
  Widget build(BuildContext context) {
    final budgetList = BudgetList.budgetList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: budgetList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(budgetList[index].getName),
                      subtitle: Text("Rp " + budgetList[index].getAmount.toString() + " \n" + budgetList[index].getDate.toString().split(" ")[0]),
                      trailing: Text(budgetList[index].getType.toString()),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
