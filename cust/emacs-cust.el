(require 'jjl-font)
; Fontage
(jjl-font/go)
; Turn on syntax highlighting
(global-font-lock-mode t)
; Indentation
(setq indent-tabs-mode nil)
(setq tab-width 4)
; Turn off the fucking bell
(setq visible-bell 1)
; Turn off the startup screen
(setq inhibit-startup-screen t)

(global-linum-mode)

(provide 'emacs-cust)




