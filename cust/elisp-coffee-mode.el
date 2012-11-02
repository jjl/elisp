; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "coffee-mode/"))
(require 'coffee-mode)

; Hook
(defun elisp-coffee-custom ()
  "coffee-mode-hook"
  ; Indent with two spaces. Nodejs gets very nested
  (set (make-local-variable 'tab-width) 2)
  ; I haven't added js2-mode yet (or decided if i like it)
  (setq coffee-js-mode 'javascript-mode))
  
(add-hook 'coffee-mode-hook '(lambda() (elisp-coffee-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\Cakefile\\'" . coffee-mode))

(provide 'elisp-coffee-mode)