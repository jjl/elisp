; Auto selection
(autoload 'scss-mode "sass-mode.el" "sass Mode" t)
(al-util/register 'sass-mode ".sass")

; Hook
(defun sass-mode-custom ()
  "sass-mode-hook"
  ; Turn off automatic compilation since I use it with `compass watch`
  (setq sass-compile-at-save nil))

(add-hook 'sass-mode-hook 'sass-mode-custom)


(provide 'sass-mode-cust)
