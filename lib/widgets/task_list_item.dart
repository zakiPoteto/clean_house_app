import 'package:clean_house_app/models/task.dart';
import 'package:clean_house_app/utils/app_date_utils.dart';
import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  final Task task;
  final VoidCallback onComplete;
  final VoidCallback onTap;

  const TaskListItem({
    super.key,
    required this.task,
    required this.onComplete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final days = AppDateUtils.daysRemaining(task.lastCleanedDate, task.intervalDays);
    final status = AppDateUtils.statusFrom(days);
    final bgColor = AppDateUtils.backgroundColorFrom(status);
    final indicatorColor = AppDateUtils.indicatorColorFrom(status);

    return Dismissible(
      key: ValueKey(task.id),
      direction: DismissDirection.startToEnd,
      background: Container(
        color: Colors.teal.shade400,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        child: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white, size: 28),
            SizedBox(width: 8),
            Text(
              '完了',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      confirmDismiss: (_) async {
        onComplete();
        return false;
      },
      child: InkWell(
        onTap: onTap,
        child: Container(
        color: bgColor,
        child: Row(
          children: [
            Container(width: 5, height: 76, color: indicatorColor),
            const SizedBox(width: 14),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '最終: ${AppDateUtils.formatDate(task.lastCleanedDate)}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppDateUtils.daysRemainingLabel(days),
                    style: TextStyle(
                      color: indicatorColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 2),
                  FilledButton.tonal(
                    onPressed: onComplete,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      minimumSize: const Size(0, 32),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text('完了', style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    ),  // InkWell
    );  // Dismissible
  }
}
