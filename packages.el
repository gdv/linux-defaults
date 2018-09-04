;;; packages.el --- windows-defaults layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Philip Daniels <philip.daniels1971@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `windows-defaults-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `windows-defaults/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `windows-defaults/pre-init-PACKAGE' and/or
;;   `windows-defaults/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst linux-defaults-packages
  '(
    buffer-move
    recentf-ext
    )
  "The list of Lisp packages required by the windows-defaults layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")


(defun linux-defaults/init-recentf-ext ()
  "This makes recentf store directories too. No customization
other than loading the package is required."
  (use-package recentf-ext))

(defun linux-defaults/init-buffer-move ()
  (use-package buffer-move
    :init
    (bind-key* "M-S-<up>"    #'buf-move-up)
    (bind-key* "M-S-<down>"  #'buf-move-down)
    (bind-key* "M-S-<left>"  #'buf-move-left)
    (bind-key* "M-S-<right>" #'buf-move-right)))


(defun linux-keybindings/init-evil ()
  (setq evil-toggle-key "C-M-`"))
;;; packages.el ends here
