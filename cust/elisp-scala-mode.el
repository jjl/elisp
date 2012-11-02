; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "scala-mode/"))
(require 'scala-mode-auto)

; Hook
;(defun elisp-scala-custom ()
;  "scala-mode-hook")
  
;(add-hook 'scala-mode-hook '(lambda() (elisp-scala-custom)))


(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

(provide 'elisp-scala-mode)