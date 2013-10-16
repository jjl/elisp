; Auto selection
(autoload 'php-mode "php-mode.el" "PHP Mode" t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

; Hook
(defun php-mode-custom ()
  "php-mode-hook")

(add-hook 'php-mode-hook 'php-mode-custom)


(provide 'php-mode-cust)
