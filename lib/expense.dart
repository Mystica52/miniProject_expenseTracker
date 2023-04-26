class TransactionItem {
  final String transaction_name;
  final String amount;
  final String dateTime;
  final String expense_or_income;

  TransactionItem(
      {required this.transaction_name,
      required this.amount,
      required this.dateTime,
      required this.expense_or_income});
}
