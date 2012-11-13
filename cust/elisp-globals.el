; Turn on syntax highlighting
(global-font-lock-mode t)
; Indentation
(setq indent-tabs-mode nil)
(setq tab-width 4)

;This fixes web mode for emacs23. And possibly fixes other modes too
(unless (fboundp 'prog-mode) (defalias 'prog-mode 'fundamental-mode))

(provide 'elisp-globals)