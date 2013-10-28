(defun jjl-flycheck-load-hook ()
  (require 'flycheck-color-mode-line)
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(eval-after-load "flycheck"
  '(jjl-flycheck-load-hook))
(set-default-font "Inconsolata 16")
(provide 'flycheck-mode-cust)
