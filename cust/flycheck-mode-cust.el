(defvar flycheck-checkers) ; Suppress warning
(defun jjl-flycheck-load-hook ()
  (require 'flycheck-color-mode-line)
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
  (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))

(eval-after-load 'flycheck
  '(jjl-flycheck-load-hook))

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'flycheck-mode-cust)
