;;; See https://github.com/syl20bnr/spacemacs/blob/master/doc/LAYERS.org#anatomy-of-a-layer

;;; This file contains general key bindings. It is the last file loaded. The
;;; word general here means independent of any package. Since the end user can
;;; exclude an arbitrary set of packages, you cannot be sure that, just because
;;; your layer includes a package, that package will necessarily be loaded. For
;;; this reason, code in these files must be generally safe, regardless of which
;;; packages are installed.

;; Use describe-personal-keybindings to list these out.
;;(require 'bind-key)

;; Make C-x, -c, -v behave properly if there is a selection. C-x KEY still works!
;; C-z is undo. C-RET starts rectangle selection mode.
(cua-mode t)

;; ******************* Function keys ********************
;; Move help to F1. Must happen before we rebind C-h.
(global-set-key [f1] (lookup-key global-map (kbd "C-h")))
(bind-key* "M-<f4>"  #'kill-buffer)           ;; CUA.

;; ******************* Letter keys ********************
(bind-key* "C-a"     #'mark-whole-buffer)

(bind-key* "C-S-h"   #'query-replace-regexp)
(bind-key* "C-n"     #'spacemacs/new-empty-buffer)
(bind-key* "C-o"     #'ido-find-file)
(bind-key* "M-o"     #'ff-find-other-file)
(bind-key* "C-M-o"   #'revert-buffer)
;; https://github.com/syl20bnr/spacemacs/blob/b7e51d70aa3fb81df2da6dc16d9652a002ba5e6b/layers/%2Bdistributions/spacemacs-base/packages.el
;; (bind-key "C-p"   #'projects)
(bind-key* "M-r"     #'isearch-backward-regexp)
(bind-key* "C-s"     #'save-buffer)
(bind-key* "M-s"     #'write-file)
(bind-key* "C-w"     #'kill-buffer)             ;; Does not stick, gets reset to ido-kill-buffer for some reason.

;; Cua mode should bind C-z to undo, but it seems to keep getting rebound to
;; evil-exit-emacs-state.


;; ******************* Arrow, PgUp/Down and other TKL keys ********************
;; C-arrow and S-arrow are already Windows compatible (move by word, extend selection, respectively)
;; These functions used to be bound to C-, since M- clashes with org-mode
;; keybindings. However, I do not really use org-mode, and moving them back to
;; M- allows me to use C- for more natural Windows keybindings.
(bind-key* "M-<up>"    #'windmove-up)
(bind-key* "M-<down>"  #'windmove-down)
(bind-key* "M-<left>"  #'windmove-left)
(bind-key* "M-<right>" #'windmove-right)
