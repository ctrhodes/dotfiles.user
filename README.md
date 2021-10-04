# dotfiles
dotfiles, based on daler/dotfiles 

This adds my preferences on top of Ryan Dale's dotfiles setup (see here)[https://github.com/daler/dotfiles]. To use, follow "Option 1: Use everything" in daler/dotfiles documentation.

After a full setup of dotfiles, clone this repo
```
git clone https://github.com/ctrhodes/dotfiles.git
```

Replace vim and tmux files with the included verions:
```
cd dotfiles.user
cp .vim ~/
cp .tmux* ~/
```

Add a user-specific profile for osx terminal:
```
cp .terminal ~/
```

After importing the profile by opening a terminal and navigating to Preferences > Profile > Settings > Import, select the Pro.user.terminal profile. Selecting this profile in the left pane of the Preferences > Profile tab, click "Default" at the bottom of the pane. Following restart of terminal, you should now have a nice terminal profile that plays well with my preferred vim colorschemes and powerline.

I sometimes like using Spyder IDE for python coding, but the stand-alone installation can be problematic with my laptop. Since miniconda has already been installed using daler/dotfiles, we can add a new conda environment containing the Anaconda Navigator which is shipped with Spyder.

To create an anaconda env:
```
bash anaconda-navigator.sh
```
