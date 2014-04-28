; Auto selection
(autoload 'clojure-mode "clojure-mode.el" "Clojure Mode" t)
(al-util/register 'clojure-mode ".clj")

; Hook
(defun clojure-mode-custom ()
  "clojure-mode-hook"
  (jproject/call-hook 'clojure-mode-hook))



(add-hook 'clojure-mode-hook 'clojure-mode-custom)

(provide 'clojure-mode-cust)
