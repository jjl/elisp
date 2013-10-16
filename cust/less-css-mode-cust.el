; Auto selection
(autoload 'less-css-mode "less-css-mode.el" "LESS CSS Mode" t)
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

; Hook
(defun less-css-mode-custom ()
  "less-css-mode-hook")

(add-hook 'less-css-mode-hook 'less-css-mode-custom)


(provide 'less-css-mode-cust)
