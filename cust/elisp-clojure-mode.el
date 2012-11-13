; Setup
(add-to-list 'load-path (concat elisp-vendor-dir "clojure-mode/"))
(require 'clojure-mode)

; Hook
;(defun elisp-clojure-custom ()
;  "clojure-mode-hook")

;(add-hook 'clojure-mode-hook '(lambda() (elisp-clojure-custom)))

; Auto selection
(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))

(provide 'elisp-clojure-mode)