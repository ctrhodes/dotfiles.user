# dotfiles
dotfiles, based on daler/dotfiles 

This adds my preferences on top of Ryan Dale's dotfiles setup, [(see here)](https://github.com/daler/dotfiles) for install instructions. To use, follow "Option 1: Use everything" in daler/dotfiles documentation.

After a full setup of dotfiles, clone this repo
```
git clone https://github.com/ctrhodes/dotfiles.git
```

Replace init and config files with personal verions:
Move into the cloned directory:
```
cd dotfiles.user
```

Copy vim init file:
```
cp init.vim ~/.config/nvim/
```

Copy hidden config files:
```
for f in ".aliases .bash_prompt .tmux.conf .tmuxline.conf"
do
cp $f ~/
done
```

Add a user-specific profile for osx terminal:
```
cp Pro.user.terminal ~/
```

After importing the profile by opening a terminal and navigating to Preferences > Profile > Settings > Import, select the Pro.user.terminal profile. Selecting this profile in the left pane of the Preferences > Profile tab, click "Default" at the bottom of the pane. Following restart of terminal, you should now have a nice terminal profile that plays well with my preferred vim colorschemes and powerline.


Add anaconda navigator env:

I sometimes like using Spyder IDE for python coding, but the stand-alone installation can be problematic with my laptop. Since miniconda has already been installed using daler/dotfiles, we can add a new conda environment containing the Anaconda Navigator which is shipped with Spyder.

To create an anaconda env:
```
bash anaconda-navigator.sh
```

If using R, install 'lintR' package to default library location.

