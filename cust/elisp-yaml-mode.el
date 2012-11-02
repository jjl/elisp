; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "yaml-mode/"))
(require 'yaml-mode)

; Hook
;(defun elisp-yaml-custom ()
;  "yaml-mode-hook")

;(add-hook 'yaml-mode-hook '(lambda() (elisp-yaml-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(provide 'elisp-yaml-mode)