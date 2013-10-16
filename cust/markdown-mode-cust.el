; Auto selection
(autoload 'markdown-mode "markdown-mode.el" "Markdown Mode" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; Hook
(defun markdown-mode-custom ()
  "markdown-mode-hook")

(add-hook 'markdown-mode-hook 'markdown-mode-custom)


(provide 'markdown-mode-cust)
