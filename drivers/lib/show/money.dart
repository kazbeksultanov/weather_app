import 'package:intl/intl.dart';

String showMoney(double value) {
  final formatCurrency = NumberFormat('#,##0.00', 'en');
  return formatCurrency.format(value);
}

String showReceiveMoney(double value) {
  final formatCurrency = NumberFormat('#,##0.00#########', 'en');
  return formatCurrency.format(value);
}

String showMoneyInCurrency(double value) {
  final formatCurrency = NumberFormat('#,##0.00####', 'en');
  return formatCurrency.format(value);
}

String showMoneyChangePercent(double value) {
  final formatChange = NumberFormat('##0.00', 'en');
  return formatChange.format(value * 100);
}
