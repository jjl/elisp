; Auto selection
(autoload 'clojure-mode "clojure-mode.el" "Clojure Mode" t)
(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))

; Hook
(defun clojure-mode-custom ()
  "clojure-mode-hook"
  ; Gosh, editing lisp without this one would be suicide
  (show-paren-mode)
  ; I prefer lisp indented with 2 spaces
  (set (make-local-variable 'tab-width) 2))

(add-hook 'clojure-mode-hook 'clojure-mode-custom)

(provide 'clojure-mode-cust)
