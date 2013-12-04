; The basics
(global-font-lock-mode t)
(setq indent-tabs-mode nil)
(setq tab-width 4)
(global-linum-mode)
; Remove irritations
(setq visible-bell 1)
(setq inhibit-startup-screen t)
(setq yes-or-no-p 'y-or-n-p)
; Fix PATH, which should fix flycheck to not use system perl etc.
(setenv "PATH"
	(concat "/usr/local/bin"
		(getenv "PATH")))

(provide 'emacs-cust)
