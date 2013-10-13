; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "haskell-mode/"))
(load (concat elisp-vendor-dir "haskell-mode/haskell-site-file"))

; Hook
(defun elisp-haskell-custom ()
  "haskell-mode-hook"
  (haskell-indent-mode))
  
(add-hook 'haskell-mode-hook '(lambda() (elisp-haskell-custom)))

(provide 'elisp-haskell-mode)
