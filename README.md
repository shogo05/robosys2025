# sec2time

[![test](https://github.com/shogo05/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/shogo05/robosys2025/actions/workflows/test.yml)

標準入力から秒数を読み込み、`分:秒` の形式に変換して出力するコマンドです。

## インストール方法
以下のコマンドを入力してください。

```
$git clone https://github.com/shogo05/robosys2025.git 
```

```
$cd robosys2025
```

必要に応じて実行権限を付与してください

```
$ chmod +x sec2time
```

## 実行例

例1: 数値を1つ入力する場合
標準入力から秒数を渡すと、分と秒に換算して出力します。

```
$ echo 65 | ./sec2time
1:5
```

例2: 連続した数値の場合
改行を含む複数の数値データも、一行ずつ変換します。

```
$ seq 60 10 90 | ./sec2time
1:0
1:10
1:20
1:30
```

## 必要なソフトウェア
・Ubuntu 24.04 LTS

　    ・Python3.8〜3.11

## ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

© 2025 Shogo Uchida

## 謝辞

このパッケージのディレクトリ構成やテスト方法は、千葉工業大学 ロボットシステム学(2025)の講義資料を参考にしています。。　　　　　　　　　・[ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
