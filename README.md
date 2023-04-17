dotfiles
========

## Init

```
git submodule init
```

```
git submodule update
```

install homebrew https://brew.sh/index_ja

```
./brew.sh
```

```
./dotfilesLink.sh
```

```
chpass -s /bin/zsh
```

```
cp ~/dotfiles/.zshrc ~/.zshrc
```

```
cp ~/dotfiles/.gitconfig ~/.gitconfig
```

## Localの更新をチェック

```
diff .gitconfig ~/.gitconfig
diff .zshrc ~/.zshrc
```

## Visual Studio Codeを `code` で起動できるようにする

* Visual Studio Code上で、 `⇧⌘P`
* `shell` で検索
* `PATH内にcodeコマンドをインストール`

## GOPRIVATE

```
git config --global url."https://<your token>:x-oauth-basic@github.com/".insteadOf "https://github.com/"
echo "export GOPRIVATE=\"github/<your name>/\"" >> ~/.zshrc
```
