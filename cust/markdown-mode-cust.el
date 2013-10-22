; Auto selection
(autoload 'markdown-mode "markdown-mode.el" "Markdown Mode" t)
(al-util/register 'markdown-mode ".md" ".markdown")

; Hook
(defun markdown-mode-custom ()
  "markdown-mode-hook")

(add-hook 'markdown-mode-hook 'markdown-mode-custom)


(provide 'markdown-mode-cust)
