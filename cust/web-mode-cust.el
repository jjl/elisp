; Auto selection
(autoload 'web-mode "web-mode.el" "Web Mode" t)
(add-to-list 'auto-mode-alist '("\\.html.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

; Hook
(defun web-mode-custom ()
  "web-mode-hook"
  (setq web-mode-html-offset 2)
  (setq web-mode-css-offset 2)
  (setq web-mode-script-offset 2)
  (setq web-mode-autocompletes-flag nil))

(add-hook 'web-mode-hook 'web-mode-custom)


(provide 'web-mode-cust)
