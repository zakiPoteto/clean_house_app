# clean_house_app

Windows と macOS が混在するチームでも同じ手順で開発できるように、
実行環境は [mise.toml](mise.toml) で固定しています。

## このプロジェクトの方針

- Flutter と Java のバージョンは [mise.toml](mise.toml) で固定します。
- 実行コマンドは `flutter ...` ではなく `mise run ...` を使います。
- 改行コードは [.gitattributes](.gitattributes) で統一します。
- CI は Windows / macOS の両方で [ci.yaml](.github/workflows/ci.yaml) を実行します。

## 前提ツール

- Git
- mise

Windows の例:

```powershell
winget install jdx.mise
```

macOS の例:

```bash
brew install mise
```

確認:

```bash
mise --version
```

## 初回セットアップ

プロジェクト直下で次を実行します。

```bash
mise install
mise run setup
```

`mise install` で [mise.toml](mise.toml) に定義されたツールを揃え、
`mise run setup` で依存関係を取得します。

## 日常の開発フロー

アプリ起動:

```bash
mise run run
```

push 前のチェック:

```bash
mise run check
```

動かないときの再構築:

```bash
mise run clean-rebuild
```

## 使えるタスク一覧

- `mise run setup` : 依存解決
- `mise run run` : アプリ起動
- `mise run check` : 静的解析 + テスト
- `mise run clean-rebuild` : クリーン後に再構築

定義は [mise.toml](mise.toml) にあります。

## Git 運用ルール

- 生成物はコミットしません。
- 改行コードは [.gitattributes](.gitattributes) の設定を守ります。
- 直接 `flutter run` を使わず、`mise run ...` を使います。

コミットしない代表例（詳細は [.gitignore](.gitignore) 参照）:

- `build/`
- `.dart_tool/`
- `.pub/`
- `.pub-cache/`

## CI（GitHub Actions）

- ワークフロー: [ci.yaml](.github/workflows/ci.yaml)
- 実行OS: `windows-latest` と `macos-latest`
- 実行内容: `flutter pub get` / `flutter analyze` / `flutter test`

PR 作成時は CI 緑（成功）を確認してからマージしてください。

## トラブルシュート

1. 依存更新後に動かない

```bash
mise install
mise run clean-rebuild
```

2. 解析やテストが失敗する

```bash
mise run check
```

3. pull 後に急に動かない

```bash
git pull
mise install
mise run setup
mise run check
```

上記でも解消しない場合は、OS とエラーログを添えて共有してください。
