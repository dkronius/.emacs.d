(setq-default indent-tabs-mode nil)

(setq default-major-mode 'text-mode)
(setq inhibit-startup-message t)
(column-number-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "Menlo 16"))

(require 'ido)
(ido-mode t)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'linum-mode)

(add-hook 'text-mode-hook 'smartparens-mode)
(add-hook 'comint-mode-hook 'smartparens-mode)
(add-hook 'prog-mode-hook 'smartparens-mode)

(require 'yasnippet)
;; (yas-global-mode 1)
(yas-reload-all)
(add-hook 'prog-mode-hook 'yas-minor-mode)


