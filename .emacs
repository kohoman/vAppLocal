; ****** ****** ****** ****** ****** ****** ****** ****** ******
;
; Red Hat Linux default .emacs initialization file
;
; Note: personal additions appear in section below.
;
; ****** ****** ****** ****** ****** ****** ****** ****** ******

;; Are we running XEmacs or Emacs?
(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; Turn on font-lock mode for Emacs
(cond ((not running-xemacs)
       (global-font-lock-mode t)
))

;; Visual feedback on selections
(setq-default transient-mark-mode t)

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Enable wheelmouse support by default
(cond (window-system
       (mwheel-install)
))

; ****** ****** ****** ****** ****** ****** ****** ****** ******
;
;  Personal additions.
;
; ****** ****** ****** ****** ****** ****** ****** ****** ******

;; ... ignore syntax highlighting within Verbatim ...
;; Added 2015/05/27 (koh)

(setq LaTeX-verbatim-environments-local '("Verbatim" "lstlisting"))

;; ... allow pasting from emacs to other applications ...
;; Added 2009/04/24 (koh)

(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; ... noweb-mode ...
;; Added 2001/08/30 (koh)
;; noweb-mode.el
;; The file is part of the standard emacs distribution.
(autoload 'noweb-mode "noweb-mode" "Editing noweb files." t)
(setq auto-mode-alist (append (list (cons "\\.nw$" 'noweb-mode))
			      auto-mode-alist))

;;
;; noweb-outline.el
;; The file is part of the standard emacs distribution.
 (autoload 'noweb-outline-read-buffer
           "noweb-outline.el"
           "View chunk tree of a noweb file."
           t)

 (autoload 'noweb-outline-jump-to-outline-chunk
           "noweb-outline.el"
           "Jump to a leaf of the chunk tree of a noweb file."
           t)


;; ... matlab-mode ...
;; Added 2008/08/28 (koh)
;; matlab-mode.el
;; The file is not part of the standard emacs distribution.
(autoload 'matlab-mode "~/local/emacs/matlab.el" "Enter Matlab mode." t)
(setq auto-mode-alist (cons'("\\.m\\'".matlab-mode)auto-mode-alist))
(autoload 'matlab-shell "~/local/emacs/matlab.el" "Interactive Matlab mode." t)

;; ... enable AUC-TeX ...
;; Added 2001/08 (koh)
;(require 'tex-site)

;; Highlight the marked region
(transient-mark-mode t)

;; Show matching parentheses
(show-paren-mode 1)

;; Turn on auto-fill when in text mode
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq fill-column 70)

;; Display time and date in the status bar
;(setq display-time-day-and-date t)
;(display-time)

;; Set the icon and frame titles %f file name, %b buffer name
(setq frame-title-format "Emacs - %b")
(setq icon-title-format "%f")

;; show column number in status bar
(setq column-number-mode t)

;; search fwd or bkwd for word under cursor
(autoload 'tisw-search-word-forward "tinysword" t t)
(autoload 'tisw-search-word-backward "tinysword" t t)
(global-set-key [f2]   'tisw-search-word-forward)
(global-set-key [S-f2] 'tisw-search-word-backward)

;; Other key re-definitions
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [\C-home] 'beginning-of-buffer)
(global-set-key [\C-end] 'end-of-buffer)

;; verbatim and code environments
(setq LaTeX-verbatim-environments-local '("Verbatim" "lstlisting" "minted"))

;; flyspell mode
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; markdown-mode (koh, 2018/01/24)
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; C++ preferred style mode (koh, 2018/03/13)
;; Note: style used by OpenFOAM program.
(setq c-default-style "bsd"
      c-basic-offset 4)
      
; ****** ****** ****** ****** ****** ****** ****** ****** ******
;
; ****** ****** ****** ****** ****** ****** ****** ****** ******
