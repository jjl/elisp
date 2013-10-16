; Auto selection
(autoload 'js2-mode "js2-mode.el" "JS2 Mode" t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

; Hook
(defun js2-mode-custom ()
  "js2-mode-hook"
  (setq js2-pretty-multiline-declarations t)
  (setq js2-basic-offset 2))

(add-hook 'js2-mode-hook 'js2-mode-custom)


(provide 'js2-mode-cust)
