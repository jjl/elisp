; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "php-mode/"))
(require 'php-mode)

; Hook
;(defun elisp-php-custom ()
;  "php-mode-hook")

;(add-hook 'php-mode-hook '(lambda() (elisp-php-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(provide 'elisp-php-mode)