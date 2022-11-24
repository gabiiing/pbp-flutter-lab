import 'package:counter_7/model/budget/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer/drawer_menu.dart';
import 'package:counter_7/page/counter/counter_7.dart';
import 'package:counter_7/page/budget/budget_form.dart';
import 'package:counter_7/page/budget/budget_list.dart';
import 'package:counter_7/model/budget/budget.dart';

class FormBudgetPage extends StatefulWidget {
  const FormBudgetPage({super.key});

  @override
  State<FormBudgetPage> createState() => _FormBudgetPageState();
}

class _FormBudgetPageState extends State<FormBudgetPage> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  int _amount = 0;
  String? _type;
  DateTime? _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Budget'),
        ),
        drawer: const DrawerMenu(),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Judul',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                    onChanged: (String? value){
                      _name = value;
                    },
                    onSaved: (String? value) {
                      _name = value!;
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Jumlah Uang',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String? value) {
                      if (value == null || value.isEmpty) {
                        _amount = 0;
                      } else {
                        _amount = int.parse(value);
                      }
                    },
                    onSaved: (String? value) {
                      if (value == null || value.isEmpty) {
                        _amount = 0;
                      } else {
                        _amount = int.parse(value);
                      }
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Jumlah uang tidak boleh kosong';
                      }
                      if (int.tryParse(value) == null) {
                        return 'Jumlah uang harus berupa angka';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: DropdownButton(
                    value: _type,
                    hint: const Text('Pilih Tipe'),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                        value: 'Pemasukan',
                        child: Text('Pemasukan'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Pengeluaran',
                        child: Text('Pengeluaran'),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        _type = value ?? "Tipe";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: (() {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          ).then((date) {
                            setState(() {
                              _date = date;
                            });
                          });
                        }),
                        child: Text(
                          _date.toString().split(" ")[0],
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                           
                            addNewBudget(_name.toString(), _amount,
                                _type.toString(), _date);
                            _formKey.currentState!.reset();
                          }
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(16),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        child: const Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

void addNewBudget(String name, int amount, String type, DateTime? date) {
  BudgetList.addBudget(Budget(
    name: name,
    amount: amount,
    type: type,
    date: date,
  ));
}
