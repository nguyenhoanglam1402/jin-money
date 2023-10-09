import 'dart:async';
import 'package:jin_app/utils/timer.dart';

class TimerManagerSingleton {
  TimerManagerSingleton._internal();

  static final instance = TimerManagerSingleton._internal();

  String renderGreeting(int currentTime) {
    final List<String> timeOfDate = [
      "Morning",
      "Afternoon",
      "Evening",
      "Night"
    ];

    final afternoonTimePoint = DateTime.parse('2023-01-23 12:00:00').hour;
    final eveningTimePoint = DateTime.parse('2023-01-23 16:00:00').hour;
    final nightTimePoint = DateTime.parse('2023-01-23 20:00:00').hour;

    if (currentTime < afternoonTimePoint) {
      return timeOfDate[0];
    } else if (currentTime > afternoonTimePoint &&
        currentTime < eveningTimePoint) {
      return timeOfDate[1];
    } else if (currentTime > eveningTimePoint && currentTime < nightTimePoint) {
      return timeOfDate[2];
    } else {
      return timeOfDate[3];
    }
  }

  Timer subscribeGreetingTimeUpdate(
      Function(String timeOfDate, [Timer? timer]) callback, int duration) {
    String greeting = "";
    return TimerUtil.setTimeLoop((timer) {
      greeting = renderGreeting(DateTime.now().hour);
      callback(greeting, timer);
    }, duration);
  }
}
