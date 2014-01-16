; Auto selection
(autoload 'clojure-mode "clojure-mode.el" "Clojure Mode" t)
(al-util/register 'clojure-mode ".clj")

; Hook
(defun clojure-mode-custom ()
  "clojure-mode-hook"
  ; Gosh, editing lisp without this one would be suicide
  (show-paren-mode)
  ; I prefer lisp indented with 2 spaces
  (set (make-local-variable 'tab-width) 2)
  ; I like cider
  (cider-mode)
  ; TODO: make this be called on indent and newline
  (define-key clojure-mode-map (kbd "C-c C-a") 'align-cljlet))



(add-hook 'clojure-mode-hook 'clojure-mode-custom)

(provide 'clojure-mode-cust)
