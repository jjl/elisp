; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "less-css-mode/"))
(require 'less-css-mode)

; Hook
;(defun elisp-less-css-custom ()
;  "less-css-mode-hook")

;(add-hook 'less-css-mode-hook '(lambda() (elisp-less-css-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

(provide 'elisp-less-css-mode)