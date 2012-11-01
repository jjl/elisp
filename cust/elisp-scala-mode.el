(require 'scala-mode-auto)
(defun elisp-scala-custom ()
  "scala-mode-hook"
  (set (make-local-variable 'tab-width) 4))
  
(add-hook 'scala-mode-hook '(lambda() (elisp-scala-custom)))
(provide 'elisp-scala-mode)