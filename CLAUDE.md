# clean_house_app 開発ガイドライン
### 1. コアスタック & コマンド
- **Framework**: Flutter (Riverpod + Hooks)
- **Data**: CSV (Repository パターン)
- **Tools**: `mise` (タスク実行), `freezed` (コード生成)

### 主要コマンド
- セットアップ: `mise run setup`
- 解析 & テスト: `mise run check`
- コード生成: `dart run build_runner build --delete-conflicting-outputs`

---

## 2. アーキテクチャ & ディレクトリ構造
**Clean Architecture** (Repository → Service → UI) を遵守。

```
lib/
  ├── models/        # Freezed Models
  ├── repositories/  # Data Access (CSV I/O, Riverpod非依存)
  ├── services/      # Business Logic (期限計算など)
  ├── providers/     # Global Providers (Repository DI等)
  ├── features/      # 機能単位の Reducer 設計 (詳細は後述)
  ├── widgets/       # 共通 UI コンポーネント
  └── utils/         # Constants, DateUtils
```

---

## 3. Reducer 設計 (Complex Screens)
複雑な画面は `useReducer` パターンで 6 ファイルに分割する。

1. **state.dart**: `@freezed` な状態定義
2. **action.dart**: `@freezed` な sealed class (Intent vs Result)
3. **reducer.dart**: 純粋関数 `reduce(state, action)`
4. **effects.dart**: `useEffect` による非同期・副作用処理
5. **store.dart**: 上記を統合したカスタムフック `useFeatureStore()`
6. **screen.dart**: `HookConsumerWidget` (UI 構築のみ)

### ⚠️ Reducer 禁止事項
- `async / await` を書かない (副作用は Effects へ)
- `DateTime.now()` を直接参照しない (Action に含める)
- `print` や外部 Service の呼び出しを行わない

---

## 4. コーディング規則
- **Naming**: 
  - Action: `xxxRequested` (意図), `xxxLoaded` (結果)
  - 定数: `lowerCamelCase`
- **Imports**: 常にパッケージ絶対パスを使用 (`package:clean_house_app/...`)
- **Error Handling**: Repository で `DomainError` に変換して throw する
- **Safety**: Force unwrapping (`!`) は原則禁止。Null-safe な処理を徹底する。

---

## 5. コミット & PR
- **Prefix**: `feat:`, `fix:`, `refactor:`, `test:`, `docs:`
- **PR**: ドラフト作成、日本語で簡潔に記述。
refactor:`, `test:`, `docs:`
- **PR**: ドラフト作成、日本語で簡潔に記述。
