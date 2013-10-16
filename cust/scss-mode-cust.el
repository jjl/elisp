; Auto selection
(autoload 'scss-mode "scss-mode.el" "scss Mode" t)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

; Hook
(defun scss-mode-custom ()
  "scss-mode-hook"
  ; Turn off automatic compilation since I use it with `compass watch`
  (setq scss-compile-at-save nil))

(add-hook 'scss-mode-hook 'scss-mode-custom)


(provide 'scss-mode-cust)
