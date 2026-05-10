import 'package:clean_house_app/features/csv_management/action.dart';
import 'package:clean_house_app/features/csv_management/effects.dart';
import 'package:clean_house_app/features/csv_management/reducer.dart';
import 'package:clean_house_app/features/csv_management/state.dart';
import 'package:clean_house_app/providers/repository_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef CsvStore = ({
  CsvState state,
  void Function(CsvAction) dispatch,
});

CsvStore useCsvStore(WidgetRef ref) {
  final repo = ref.watch(taskRepositoryProvider);

  final store = useReducer<CsvState, CsvAction>(
    reduce,
    initialState: const CsvState(),
    initialAction: const CsvNoop(),
  );

  useCsvEffects(store.state, store.dispatch, repo);

  return (state: store.state, dispatch: store.dispatch);
}
