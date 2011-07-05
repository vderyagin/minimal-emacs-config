# Minimal init.el file for Emacs #

Reasons behind this:
* Emacs is not very usable with default settings (most annoying are all that temporary files, left after editing)
* my main Emacs configuration starts up almost for one minute (with all initializations and 100+ buffers session restoring)

So I extracted some minimal subset of main configuration for using when fast startup is needed (e.g. writing commit messages on the console).

This is the shell alias I use to start Emacs with this configuration:

    alias em="emacs -Q -nw -l ~/.emacs.d/minimal-init.el"

(`init.el` from this repository is symlinked to `~/.emacs.d/minimal-init.el`).
