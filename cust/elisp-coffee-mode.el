(require 'coffee-mode)
(defun coffee-custom ()
  "coffee-mode-hook"
  ; Indent with two spaces. Nodejs gets very nested
  (set (make-local-variable 'tab-width) 2)
  ; I haven't added js2-mode yet (or decided if i like it)
  (setq coffee-js-mode 'javascript-mode))
  
(add-hook 'coffee-mode-hook '(lambda() (coffee-custom)))
(provide 'elisp-coffee-mode)