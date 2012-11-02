; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "cperl-mode/"))
(require 'cperl-mode)

; Hook
;(defun elisp-cperl-custom ()
;  "cperl-mode-hook")

;(add-hook 'cperl-mode-hook '(lambda() (elisp-cperl-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.pl\\'" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.pm\\'" . cperl-mode))

(provide 'elisp-cperl-mode)