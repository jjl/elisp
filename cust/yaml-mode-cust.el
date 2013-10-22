; Auto selection
(autoload 'yaml-mode "yaml-mode.el" "YAML Mode" t)
(al-util/register 'yaml-mode ".yml" ".yaml")

; Hook
(defun yaml-mode-custom ()
  "yaml-mode-hook")

(add-hook 'yaml-mode-hook 'yaml-mode-custom)


(provide 'yaml-mode-cust)
