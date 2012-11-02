; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "scss-mode/"))
(require 'scss-mode)

; Hook
(defun elisp-scss-custom ()
  "scss-mode-hook"
  ; Turn off automatic compilation since I use it with `compass watch`
  (setq scss-compile-at-save nil))

(add-hook 'scss-mode-hook '(lambda() (elisp-scss-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(provide 'elisp-scss-mode)