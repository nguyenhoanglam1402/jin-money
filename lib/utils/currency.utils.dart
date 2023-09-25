
import 'package:intl/intl.dart';

class CurrencyUtil {
  static String converter (
      double currencyNumber
      ) {
    final formatCurrency = NumberFormat("#,##0", "en_US").format(currencyNumber);
    return formatCurrency;
  }
}