(defun al-util/register (mode &rest names)
  (let ((re (al-util/build names)))
    (add-to-list 'auto-mode-alist (cons re mode))))

(defun al-util/build (names)
  (concat (regexp-opt names) "\\'"))

(regexp-opt '("1" "2" "3"))
(provide 'al-util)
