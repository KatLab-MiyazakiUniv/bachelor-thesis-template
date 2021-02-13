[![](https://images.microbadger.com/badges/image/korosuke613/ubuntu-texlive-ja-devcontainer.svg)](https://microbadger.com/images/korosuke613/ubuntu-texlive-ja-devcontainer "Get your own image badge on microbadger.com")

# bachelor-thesis-template
 
VS Code Remote Developmentの機能を用いて、片山研の学士(卒業)論文執筆環境を容易に構築するテンプレートです。


Dockerイメージは、[ubuntu-texlive-ja](https://hub.docker.com/r/korosuke613/ubuntu-texlive-ja)を利用しています。

(**Dockerが必要です**)

## setup

1. `git clone https://github.com/KatLab-MiyazakiUniv/bachelor-thesis-template.git`
2. VS Codeで`bachelor-thesis-template`を開く。
3. 拡張機能[Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)を追加する。
4. 左下の`><`アイコンを押して、`Remote-Containers: Reopen in Container`を実行する。
5. 待つ。
6. ワークスペースが開いたら、terminalを開き、`make`を実行する。
7. 上手くコンパイルできたらsetup完了！

## build

```bash
make
```

`paper.pdf`という実行ファイルができているはず。

## clean

```bash
make clean
```

中間ファイルや生成したPDFファイルをまとめて削除します。