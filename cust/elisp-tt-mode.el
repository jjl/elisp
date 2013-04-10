; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "tt-mode/"))
(require 'tt-mode)

; Auto selection
(add-to-list 'auto-mode-alist '("\\.tt\\'" . tt-mode))

(provide 'elisp-tt-mode)
