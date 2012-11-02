(require 'php-mode)
(defun elisp-php-custom ()
  "php-mode-hook"
  (set (make-local-variable 'tab-width) 4))
  
(add-hook 'php-mode-hook '(lambda() (elisp-php-custom)))
(provide 'elisp-php-mode)