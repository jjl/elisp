; Auto selection
(autoload 'haskell-mode "haskell-mode.el" "Haskell Mode" t)
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))

; Hook
(defun haskell-mode-custom ()
  "haskell-mode-hook"
  ; This mode seems to irritate me the least at the minute
  (haskell-indent-mode))
  
(add-hook 'haskell-mode-hook 'haskell-mode-custom)

(provide 'haskell-mode-cust)
