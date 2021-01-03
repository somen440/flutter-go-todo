import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

String dateTimeAsJaString(DateTime dt) {
  initializeDateFormatting('ja_JP');
  return (DateFormat('yyyy/MM/dd(E) HH:mm', "ja_JP")).format(dt);
}
