; Auto selection
(autoload 'yaml-mode "yaml-mode.el" "YAML Mode" t)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

; Hook
(defun yaml-mode-custom ()
  "yaml-mode-hook")

(add-hook 'yaml-mode-hook 'yaml-mode-custom)


(provide 'yaml-mode-cust)
