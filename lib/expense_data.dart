import 'package:expense_tracker/expense.dart';

class TransactionData {
  //list off all transactions

  List<TransactionItem> overallTransactionList = [];
  //get transaction list

  List<TransactionItem> getAllTransactionList() {
    return overallTransactionList;
  }

  //add new transaction
  void addNewTransaction(TransactionItem newTransaction) {
    overallTransactionList.add(newTransaction);
  }

  //delete transaction
  void deleteTransaction(TransactionItem newTransaction) {
    overallTransactionList.remove(newTransaction);
  }

  //day to day name
  String getDayName(DateTime dateTime) {
    switch (dateTime.weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thur';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }

// getting the start of the week day
  DateTime startofweekdate() {
    DateTime? startofweek;
    DateTime today = DateTime.now();

    for (int i = 0; i < 7; i++) {
      if (getDayName(today.subtract(Duration(days: i))) == 'Sun') {
        startofweek = today.subtract(Duration(days: i));
      }
    }
    return startofweek!;
  }
}
