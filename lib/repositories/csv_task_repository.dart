import 'dart:io';
import 'package:clean_house_app/models/domain_error.dart';
import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/repositories/task_repository.dart';
import 'package:clean_house_app/utils/constants.dart';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
class CsvTaskRepository implements TaskRepository {
  Future<File> _getFile() async {
    final dir = await getApplicationDocumentsDirectory();
    return File('${dir.path}/$kCsvFileName');
  }

  @override
  Future<List<Task>> fetchAll() async {
    final file = await _getFile();
    if (!await file.exists()) return [];
    try {
      final content = await file.readAsString();
      return _parseCsv(content);
    } catch (e) {
      throw DomainError.csvParseFailed(e.toString());
    }
  }

  @override
  Future<void> save(Task task) async {
    final tasks = await fetchAll();
    final index = tasks.indexWhere((t) => t.id == task.id);
    if (index >= 0) {
      tasks[index] = task;
    } else {
      tasks.add(task);
    }
    await _writeAll(tasks);
  }

  @override
  Future<void> delete(String id) async {
    final tasks = await fetchAll();
    tasks.removeWhere((t) => t.id == id);
    await _writeAll(tasks);
  }

  @override
  Future<void> saveAll(List<Task> tasks) async {
    await _writeAll(tasks);
  }

  @override
  Future<String> exportCsv() async {
    final tasks = await fetchAll();
    return _toCsvString(tasks);
  }

  @override
  Future<({String csvContent, String filePath})> exportToFile() async {
    try {
      final csvContent = await exportCsv();
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$kCsvFileName');
      await file.writeAsString(csvContent);
      return (csvContent: csvContent, filePath: file.path);
    } catch (e) {
      throw DomainError.saveFailed(e.toString());
    }
  }

  @override
  Future<List<Task>> importCsv(String csvContent) async {
    try {
      final tasks = _parseCsv(csvContent);
      await _writeAll(tasks);
      return tasks;
    } catch (e) {
      throw DomainError.csvParseFailed(e.toString());
    }
  }

  List<Task> _parseCsv(String content) {
    if (content.trim().isEmpty) return [];
    final rows = const CsvToListConverter().convert(content, eol: '\n');
    if (rows.isEmpty) return [];

    final headerRow = rows.first.map((e) => e.toString()).toList();
    final missing = kCsvHeaders.where((h) => !headerRow.contains(h)).toList();
    if (missing.isNotEmpty) {
      throw DomainError.csvParseFailed('必須ヘッダーがありません: ${missing.join(', ')}');
    }

    final dataRows = rows.skip(1);

    int col(String name) => headerRow.indexOf(name);

    return dataRows.map((row) {
      final rawDate = row[col('last_cleaned_date')].toString();
      final rawTags = row[col('tags')].toString();
      final rawTime = row[col('time_taken')].toString();
      final parsedInterval = int.tryParse(row[col('interval_days')].toString()) ?? 0;

      return Task(
        id: row[col('id')].toString(),
        name: row[col('name')].toString(),
        intervalDays: parsedInterval > 0 ? parsedInterval : 7,
        lastCleanedDate: rawDate.isEmpty ? null : _parseDate(rawDate),
        timeTaken: rawTime.isEmpty ? null : int.tryParse(rawTime),
        tags: rawTags.isEmpty ? [] : rawTags.split('|'),
      );
    }).toList();
  }

  DateTime? _parseDate(String raw) {
    try {
      final parts = raw.replaceAll('/', '-').split('-');
      if (parts.length != 3) return null;
      return DateTime(
        int.parse(parts[0]),
        int.parse(parts[1]),
        int.parse(parts[2]),
      );
    } catch (_) {
      return null;
    }
  }

  String _toCsvString(List<Task> tasks) {
    final rows = <List<dynamic>>[kCsvHeaders];
    for (final t in tasks) {
      final date = t.lastCleanedDate;
      rows.add([
        t.id,
        t.name,
        t.intervalDays,
        date != null
            ? '${date.year}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}'
            : '',
        t.timeTaken ?? '',
        t.tags.join('|'),
      ]);
    }
    return const ListToCsvConverter().convert(rows);
  }

  Future<void> _writeAll(List<Task> tasks) async {
    try {
      final file = await _getFile();
      await file.writeAsString(_toCsvString(tasks));
    } catch (e) {
      throw DomainError.saveFailed(e.toString());
    }
  }

}
