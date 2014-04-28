(require 'cider)

(defun cider-repl-mode-custom ()
  (jproject/call-hook 'cider-repl-mode-hook))

(defun cider-mode-custom ()
  (jproject/call-hook 'cider-mode-hook))

(add-hook 'cider-mode-hook 'cider-mode-custom)
(add-hook 'cider-repl-mode-hook 'cider-repl-mode-custom)

(provide 'cider-cust)
