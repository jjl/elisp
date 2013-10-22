; Auto selection
(autoload 'haskell-mode "haskell-mode.el" "Haskell Mode" t)
(al-util/register 'haskell-mode ".hs" ".lhs")

; Hook
(defun haskell-mode-custom ()
  "haskell-mode-hook"
  ; This mode seems to irritate me the least at the minute
  (haskell-indent-mode))
  
(add-hook 'haskell-mode-hook 'haskell-mode-custom)

(provide 'haskell-mode-cust)
