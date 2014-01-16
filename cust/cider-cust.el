(require 'cider)

(defun cider-repl-mode-custom ()
  (enable-auto-complete)
  (define-key cider-repl-mode-map (kbd "C-c C-d") 'ac-nrepl-compliment-popup-doc))

(defun cider-mode-custom ()
  (enable-auto-complete)
  (cider-turn-on-eldoc-mode)
  (rainbow-delimiters-mode)
  (setq nrepl-hide-special-buffers t))

(add-hook 'cider-mode-hook 'cider-mode-custom)
(add-hook 'cider-repl-mode-hook 'cider-repl-mode-custom)

(provide 'cider-cust)
