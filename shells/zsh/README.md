# ZSH

## Install Oh My ZSH!

According to their [website](https://ohmyz.sh/):

> Oh My Zsh is an open source, community-driven framework for managing your Zsh
> configuration.
>
> Sounds boring. Let's try again.
>
> Oh My Zsh will not make you a 10x developer...but you may feel like one!
> Once installed, your terminal shell will become the talk of the town or your
> money back! With each keystroke in your command prompt, you'll take advantage
> of the hundreds of powerful plugins and beautiful themes. Strangers will come
> up to you in cafés and ask you, "that is amazing! are you some sort of
> genius?"
> Finally, you'll begin to get the sort of attention that you have always felt
> you deserved. ...or maybe you'll use the time that you're saving to start
> flossing more often. :grimacing_face:

Install using `curl`:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install using `wget`:
```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

:double_exclamation_mark: **NOTE: all entries in the `~/.zshrc` file will be
lost / overwritten when Oh My ZSH! is installed.**

## Set Theme

Oh My ZSH! provides a number of built-in themes for you to chose from. You can
browse the [gallery](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) to see how
they will appear. Once selected, you need to update the `ZSH_THEME` entry in
`~/.zshrc`.

```bash
ZSH_THEME=juanghurtado"
```

## Set Aliases

The best place to set aliases are in the `$ZSH_CUSTOM` directory (e.g.,
`~/.oh-my-zsh/custom`). Files placed here with the `.zsh` extension will be
loaded by the shell in alphabetical order. The `.aliases` file from this
repository can be placed there and then appropriately named in order for our
standard aliases to be installed, overriding those provided by default by Oh My
ZSH! and its plugins and themes.
