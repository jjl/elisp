; Auto selection
(autoload 'coffee-mode "coffee-mode.el" "Coffee Mode" t)
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\Cakefile\\'" . coffee-mode))

; Hook
(defun coffee-mode-custom ()
  "coffee-mode-hook"
  ; Indent with two spaces. Nodejs gets very nested
  (set (make-local-variable 'tab-width) 2))
  
(add-hook 'coffee-mode-hook 'coffee-mode-custom)

(provide 'coffee-mode-cust)
