; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "js2-mode/"))
(require 'js2-mode)

; Hook
(defun elisp-js2-custom ()
  "js2-mode-hook"
  (setq js2-pretty-multiline-declarations t))

(add-hook 'js2-mode-hook '(lambda() (elisp-js2-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(provide 'elisp-js2-mode)