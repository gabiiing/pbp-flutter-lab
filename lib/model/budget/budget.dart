
class Budget {
  String name;
  int amount;
  String type;
  DateTime? date;

  Budget({
    required this.name,
    required this.amount,
    required this.type,
    required this.date,
  });


  get getName => name;
  get getAmount => amount;
  get getType => type;
  get getDate => date;
}

class BudgetList {
  static List<Budget> budgetList = [];

  static  void addBudget(Budget budget) {
    budgetList.add(budget);
  }

  void removeBudget(Budget budget) {
    budgetList.remove(budget);
  }

  List<Budget> getBudgetList() {
    return budgetList;
  }
}
