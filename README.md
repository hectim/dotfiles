# Steps

+ iterm
+ neobundle
+ zsh
  * [install zsh autosuggest](https://github.com/zsh-users/zsh-autosuggestions)
+ zprezto
  * run this part once, it creates some symbolic links in the home directory:
  ```bash
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
  ```


```
./install
```

+ bask in the symlinked glory
+ commit changes often
