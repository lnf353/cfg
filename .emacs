
(setq bookmark-save-flag 't)
	; magit
(desktop-save-mode t)
(setq solarized-contrast 'high)
(setq solarized-visibility 'high)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(add-to-list 'default-frame-alist '(font . "Source Code Pro Medium-14"))
(set-default-font "Source Code Pro Medium-14")

(global-set-key [?\C-z] 'universal-argument);
(global-set-key (kbd "C-p") 'forward-word)
(global-set-key (kbd "C-u") 'backward-word)

(global-set-key (kbd "C-x d") 'kill-visual-line)
(global-set-key (kbd "C-;") 'recenter-top-bottom)
(global-set-key (kbd "C-n") 'scroll-down-command)

(keyboard-translate ?\C-j ?\H-j)
(global-set-key [?\H-j] 'backward-char)

(keyboard-translate ?\C-i ?\H-i)
(global-set-key [?\H-i] 'previous-line)

(keyboard-translate ?\C-k ?\H-k)
(global-set-key [?\H-k] 'next-line)

(keyboard-translate ?\C-l ?\H-l)
(global-set-key [?\H-l] 'forward-char)

(global-set-key [f5] 'bookmark-set)
(global-set-key [f6] 'bookmark-jump)

(global-set-key [f2] 'kmacro-call-macro) 
(global-set-key [f3] 'kmacro-start-macro-or-insert-counter)
(global-set-key [f4] 'kmacro-end-or-call-macro)

(global-set-key (kbd "C-c q") 'comment-region)

(global-set-key [f5] 'bookmark-set)
(global-set-key [f6] 'bookmark-jump)
2(global-set-key (kbd "C-x q") 'mark-whole-buffer)
(global-set-key (kbd "M-j") 'emmet-expand-line)
(windmove-default-keybindings 'meta)

(setq display-time-24hr-format t)
(display-time-mode             t)
(size-indication-mode          t)

(setq show-paren-style 'expression)
(show-paren-mode t)
(electric-pair-mode 1)
(setq ring-bell-function 'ignore) 
(setq set-fill-column 120)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/plugins/avy")
(require 'avy)
(global-set-key (kbd "C-'") 'avy-goto-char)

(setq scroll-step 1); вверх-вниз по 1 строке
(setq scroll-margin 10);верх/вниз когда курсор в 10 шагах от верхней/нижней границ  
 
(delete-selection-mode t)
(blink-cursor-mode -1)
(setq use-dialog-box nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера

;(require 'expand-region)
(global-set-key (kbd "C-q") 'er/expand-region)

(when (window-system)
  (set-frame-size (selected-frame) 100 50))

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving
(setq-default word-wrap t)
(setq next-line-add-newlines nil)
(setq scroll-step 1)
(global-visual-line-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq require-final-newline t)

(defun newLineIndentAfter ()
  (interactive)
  (end-of-visual-line)
  (newline-and-indent))

(global-set-key (kbd "C-o") 'newLineIndentAfter)

(global-set-key (kbd "RET") 'newline-and-indent)
(setq lisp-indent-function  'common-lisp-indent-function)

;; http://code.google.com/p/dea/source/browse/trunk/my-lisps/linum%2B.el
(require 'linum)
(setq linum-format "%d ")
(global-linum-mode 1)

(add-to-list 'load-path "/home/ingph/.emacs.d/plugins/emacs-colorpicker")
(require 'colorpicker)
(global-set-key (kbd "C-x f") 'colorpicker)

(require 'imenu)
(setq imenu-auto-rescan      t)
(setq imenu-use-popup-menu nil)
(global-set-key (kbd "<f8>") 'imenu)

;; built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;mltpe-cursors
(add-to-list 'load-path "/home/ingph/.emacs.d/plugins/multiple-cursors.el")
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-<tab>") 'workspace-goto)

(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "/home/ingphg/.emacs.d/plugins/auto-complet/dict")

(add-to-list 'load-path "/home/ingph/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(add-to-list 'load-path "/home/ingph/.emacs.d/plugins")
(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

;; built-in
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(global-set-key (kbd "<f1>") 'bs-show)

(add-to-list 'load-path "/home/ingph/.emacs.d/plugins")
(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'sgml-mode-hook 'auto-complete-mode) 
(add-hook 'css-mode-hook  'auto-complete-mode)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/scss-mode"))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(load-theme 'solarized-light t)
(setq solarized-contrast 'high)
(setq solarized-visibility 'high)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
