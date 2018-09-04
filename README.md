# linux-defaults

This package customizes Spacemacs with a set of keybindings and behaviours that
will be familiar to a Linux user. The keybindings were created by
analyzing the
[windows-defaults](https://github.com/PhilipDaniels/windows-defaults)
repo, from which this repo is forked.

CUA-mode is used, so that the familiar C-x, C-c, C-v keybindings work. Some
Emacs functions have been moved to different keys (search is C-f, for example),
but a surprisingly large number remain on their default keys.

This layer installs a minimal set of small packages, it doesn't bring in
anything heavyweight, just enough to create some handy keybindings.

### Installation

The easiest way is to clone this repo directly into your Spacemacs *layers* folder:

    git clone https://github.com/PhilipDaniels/windows-defaults ~/.emacs.d/layers/windows-defaults

Alternatively, you can clone to an arbitrary folder, but you must add that
folder to your custom layer load path, for example:

    dotspacemacs-configuration-layer-path '("~/repos/spacemacs")

After either of the above, then just add `windows-defaults` to your
`dotspacemacs-configuration-layers` variable in your `.spacemacs` file in the usual way.

### CUA mode

[CUA mode](https://www.gnu.org/software/emacs/manual/html_node/emacs/CUA-Bindings.html) is
turned on. From the manual:

    When CUA mode is enabled, the keys C-x, C-c, C-v, and C-z invoke commands
    that cut (kill), copy, paste (yank), and undo respectively. The C-x and C-c
    keys perform cut and copy only if the region is active. Otherwise, they
    still act as prefix keys, so that standard Emacs commands like C-x C-c still
    work.

### Arrow keys

The standard meaning of the arrow keys is preserved:

    C-<arrow> means "move by words"
    S-<arrow> means "extend selection"
    C-S-<arrow> means "extend selection while moving by words"

In addition, the `windmove` and `buf-move` packages are used to make moving
around windows very quick and easy:

    M-<arrow> means "select window in that direction"
    M-S-<arrow> means "swap this buffer with that one"


### Opening and Saving Files

    C-o means "open file" (via ido-find-files)
    M-o means "find alternate file" (e.g. flip from .cpp to .hpp)
    C-n means "new file"
    C-s means "save file"
    M-s means "save as" (renames buffer and file)
    C-M-o means "revert buffer"
    C-S-s means "save all" (with prompting)
    C-w means "kill the buffer"
    
### Basic Editing


    C-a means "select all" (unfortunately `C-a` is too common to rebind)

### Searching

    C-f means "find"
    M-f means "regex find"

    C-r means "find backwards"
    M-r means "regex find backwards"

    C-h means "query replace"
    M-h means "query replace the entire buffer"
    C-S-h means "query replace regex"

### Other

    M-S-<return> means "toggle full screen"
    F1 is the help key. e.g. "F1 f" gets help on functions.
    M-F5 means "redraw window"
    M-<backspace> means "undo" (Windows standard).

# TODO/BUGS

*  After exiting CUA rectangle mark mode C-z is no longer undo
