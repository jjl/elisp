;Constants we can use in cust code
(setq elisp-base-dir (file-name-directory (or load-file-name buffer-file-name)))
(setq elisp-vendor-dir (concat elisp-base-dir "vendor/"))
(setq elisp-site-dir (concat elisp-base-dir "site/"))
(setq elisp-cust-dir (concat elisp-base-dir "cust/"))

;Add the cust dir to the list
(add-to-list 'load-path elisp-cust-dir)

;We've moved to using Cask
(require 'cask "~/.cask/cask.el")
(cask-setup elisp-base-dir)
(epl-initialize)

; Turn on syntax highlighting
(global-font-lock-mode t)
; Indentation
(setq indent-tabs-mode nil)
(setq tab-width 4)
; Turn off the fucking bell
(setq visible-bell 1)
; Turn off the startup screen
(setq inhibit-startup-screen t)



; Load our customisation modules
(require 'clojure-mode-cust)
(require 'coffee-mode-cust)
(require 'cperl-mode-cust)
(require 'haskell-mode-cust)
(require 'iswitchb-mode-cust)
(require 'less-css-mode-cust)
(require 'js2-mode-cust)
(require 'magit-cust)
(require 'markdown-mode-cust)
(require 'php-mode-cust)
(require 'sass-mode-cust)
(require 'scala-mode-cust)
(require 'scss-mode-cust)
(require 'tt-mode-cust)
(require 'web-mode-cust)
(require 'yaml-mode-cust)
