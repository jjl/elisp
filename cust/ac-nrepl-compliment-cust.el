(defconst jjl/ac-nrepl-compliment-dir (concat jjl/vendor-dir "ac-nrepl-compliment"))
(add-to-list 'load-path jjl/ac-nrepl-compliment-dir)
(require 'ac-nrepl-compliment)

; Hooks
(defun ac-nrepl-compliment-custom ()
  (add-hook 'cider-mode-hook 'ac-nrepl-compliment-setup)
  (add-hook 'cider-repl-mode-hook 'ac-nrepl-compliment-setup)
  (eval-after-load "auto-complete"
    '(lambda ()
       (add-to-list 'ac-modes 'cider-mode)
       (add-to-list 'ac-modes 'cider-repl-mode))))

(ac-nrepl-compliment-custom)

(provide 'ac-nrepl-compliment-cust)
