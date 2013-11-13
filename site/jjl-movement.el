(require 's)
(require 'js2-mode)
(require 'flycheck)

(defun jjl-next-error ()
  (interactive)
  (if (s-equals? major-mode 'js2-mode)
      (js2-next-error)
    (flycheck-next-error)))
(defun jjl-previous-error ()
  (interactive)
  (if (s-equals? major-mode 'js2-mode)
      (js2-previous-error)
    (flycheck-previous-error)))

(provide 'jjl-movement)