class FeesCardData {
  final String cardHeading;
  final String feesCode;
  final String dueDate;
  final double amount;
  final double fine;
  final double discount;
  final double paidAmount;
  final double balanceAmount;

  final bool? fullPaid;
  final bool? partial;




  FeesCardData({required this.cardHeading, required this.feesCode, required this.dueDate, required this.amount, required this.fine, required this.discount, required this.paidAmount, required this.balanceAmount, this.fullPaid, this.partial});




}