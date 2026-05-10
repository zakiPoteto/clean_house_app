import 'package:flutter/material.dart';

const int kYellowThresholdDays = 3;

const Color kStatusGreen = Color(0xFF4CAF50);
const Color kStatusYellow = Color(0xFFFFC107);
const Color kStatusRed = Color(0xFFF44336);

const Color kStatusGreenLight = Color(0xFFE8F5E9);
const Color kStatusYellowLight = Color(0xFFFFF8E1);
const Color kStatusRedLight = Color(0xFFFFEBEE);

const String kCsvFileName = 'clean_house_tasks.csv';

const List<String> kCsvHeaders = [
  'id',
  'name',
  'interval_days',
  'last_cleaned_date',
  'time_taken',
  'tags',
];

const List<Map<String, dynamic>> kTaskTemplates = [
  {'name': 'トイレ', 'intervalDays': 7, 'tags': ['水回り']},
  {'name': 'お風呂', 'intervalDays': 7, 'tags': ['水回り']},
  {'name': 'キッチン', 'intervalDays': 3, 'tags': ['水回り']},
  {'name': 'リビング', 'intervalDays': 7, 'tags': ['リビング']},
  {'name': '洗面台', 'intervalDays': 7, 'tags': ['水回り']},
  {'name': '床（全体）', 'intervalDays': 7, 'tags': ['床']},
  {'name': '窓', 'intervalDays': 30, 'tags': ['その他']},
  {'name': '冷蔵庫', 'intervalDays': 30, 'tags': ['キッチン']},
];
