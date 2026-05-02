import 'package:flutter/material.dart';
import 'package:clean_house_app/utils/constants.dart';

class AppDateUtils {
  AppDateUtils._();

  static DateTime today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  static int daysRemaining(DateTime? lastCleanedDate, int intervalDays) {
    if (lastCleanedDate == null) return -intervalDays;
    final nextDate = lastCleanedDate.add(Duration(days: intervalDays));
    return nextDate.difference(today()).inDays;
  }

  static TaskStatus statusFrom(int daysRemaining) {
    if (daysRemaining < 0) return TaskStatus.overdue;
    if (daysRemaining <= kYellowThresholdDays) return TaskStatus.soon;
    return TaskStatus.ok;
  }

  static Color backgroundColorFrom(TaskStatus status) {
    switch (status) {
      case TaskStatus.ok:
        return kStatusGreenLight;
      case TaskStatus.soon:
        return kStatusYellowLight;
      case TaskStatus.overdue:
        return kStatusRedLight;
    }
  }

  static Color indicatorColorFrom(TaskStatus status) {
    switch (status) {
      case TaskStatus.ok:
        return kStatusGreen;
      case TaskStatus.soon:
        return kStatusYellow;
      case TaskStatus.overdue:
        return kStatusRed;
    }
  }

  static String formatDate(DateTime? date) {
    if (date == null) return '未記録';
    return '${date.year}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}';
  }

  static String daysRemainingLabel(int days) {
    if (days < 0) return '${(-days)}日超過';
    if (days == 0) return '今日';
    return 'あと${days}日';
  }
}

enum TaskStatus { ok, soon, overdue }
