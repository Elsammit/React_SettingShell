■使い方
前提として、yarnがインストールされていることです。

格納されているreact.shを実行すればOKです。
引数ですが、
　・第1引数：Reactプロジェクト名
　・第2引数以降：各ページ用コード
になります。
例えば、

react.sh rpg aaa bbb ccc

と実行すると、
rpgというプロジェクトが作成され、
aaaとbbb、cccというページが作成されます。
App.jsには画面遷移用のパスが格納されております。
