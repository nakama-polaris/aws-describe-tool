# aws-describe-tool

## 概要

AWSのリソースの情報の出力を行う

## セットアップ

### VSCode推奨の拡張機能の追加

`Ctrl` + `Shift` + `X` → @recommended と入力する  
"WORKSPACE RECOMMENDAATIONS" の内容をすべてインストールする

### DevContainerのオープン

`Ctrl` + `Shift` + `P` → "Reopen Folder in DevContainer"

開かれたらpythonとawscliのバージョンを確認

```bash
vscode ➜ /workspace (feature/setup) $ python --version
Python 3.12.0
vscode ➜ /workspace (feature/setup) $ aws --version
aws-cli/2.13.31 Python/3.11.6 Linux/5.10.16.3-microsoft-standard-WSL2 exe/x86_64.debian.11 prompt/off
```

pipのアップグレード

```bash 
pip install --upgrade pip
```

### 各ツールのインストール

#### cfn-lint

```python
pip install cfn-lint

vscode ➜ /workspace (feature/setup) $ cfn-lint --version
cfn-lint 0.83.1
```

#### GitHub Copilot

省略
