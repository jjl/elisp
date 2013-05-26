; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "markdown-mode/"))
(require 'markdown-mode)

; Hook
;(defun elisp-markdown-custom ()
;  "markdown-mode-hook")

;(add-hook 'markdown-mode-hook '(lambda() (elisp-markdown-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'elisp-markdown-mode)
