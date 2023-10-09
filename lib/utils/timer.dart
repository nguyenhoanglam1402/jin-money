import 'dart:async';
import 'package:intl/intl.dart';

class TimerUtil {
  static DateTime currentTime = DateTime.now();

  static String getFormatTime(String formatString) {
    final formatter = DateFormat(formatString);
    return formatter.format(currentTime);
  }

  static Timer setTimeLoop(Function(Timer) callback, int timeDelay) {
    return Timer.periodic(Duration(milliseconds: timeDelay), callback);
  }
}