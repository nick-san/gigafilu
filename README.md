# gigafilu

## これはなに

ギガファイル便にあるファイルをCLIでダウンロードするためだけのBashスクリプト

「まとめてダウンロード」に対応しています(単一ファイルのダウンロードには対応してるかしてないかもしれません(？))

- 動作には```wget```が必要です

- サイト側の仕様変更等で使えなくなる場合があります

## 使いかた

```
$ git clone https://github.com/nick-san/gigafilu
$ cd gigafilu
$ chmod +x ./giga.sh

# URLを渡して使う
$ ./giga.sh https://XX.gigafile.nu/XXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# 対話型で使う
$ ./giga.sh
```
