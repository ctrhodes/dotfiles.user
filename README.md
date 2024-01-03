# dotfiles
dotfiles, based on daler/dotfiles 

This adds my preferences on top of Ryan Dale's dotfiles setup, [(see here)](https://github.com/daler/dotfiles) for install instructions. To use, follow "Option 1: Use everything" in daler/dotfiles documentation.

After a full setup of dotfiles, clone this repo
```
git clone https://github.com/rhodesch/dotfiles.user.git
```

Replace init and config files with personal verions:
Move into the cloned directory:
```
cd dotfiles.user
```

Add a user-specific profile for osx terminal:
```
cp Pro.user.terminal ~/
```

Update ~/.aliases ls behavior a bit
```
alias ll='ls -lh'    # from alias ll='ls -lrth'
alias la='ls -lhA'    # from alias la='ls -lrthA'
```

Update ~/.bash_prompt PS1 base base
```
# from export PS1="\u@\h:\w\\$ "
export PS1="\u@\[$(tput sgr0)\]\[\033[0;32m\]\h\[$(tput sgr0)\]:\w\\$ "
```

Importing the terminal profile:

Open a terminal and navigate to Preferences > Profile > Settings > Import, select the Pro.user.terminal profile. Select this profile in the left pane of the Preferences > Profile tab, click "Default" at the bottom of the panel and restart of terminal.
You should now have a nice terminal profile that plays well with my preferred vim colorschemes and powerline.

Also, set a Powerline compatable font:

Preferences > Text > Font: "DejaVu Sans Mono for Powerline 12 pt."


Optional, add anaconda navigator env:

I sometimes like using Spyder IDE for python coding, but the stand-alone installation can be problematic with my laptop. Since miniconda has already been installed using daler/dotfiles, we can add a new conda environment containing the Anaconda Navigator which is shipped with Spyder.

To create an anaconda env:
```
bash anaconda-navigator.sh
```
