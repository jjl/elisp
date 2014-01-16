(require 'dash)
(defvar jjl-projects/base-dirs '("~/code" "~/src"))

(defun jjl-projects/projectile-project? (path)
  (and (file-directory-p path)
       (file-exists-p (concat path ".projectile"))))

(defun jjl-projects/tags-project? (path)
  (and (file-directory-p path)
       (file-exists-p (concat path "TAGS"))))

(defun jjl-projects/is-project? (path)
  (or (jjl-projects/tags-project? path)
      (jjl-projects/projectile-project? path)))

(defun jjl-projects/filtered-projects-from (fn path)
  (if (file-directory-p path)
      (-filter fn (directory-files path t))
    '()))

(defun jjl-projects/tags-list ()
  (-mapcat
   (lambda (x)
     (jjl-projects/filtered-projects-from
      'jjl-projects/tags-project? x)) jjl-projects/base-dirs))

(provide 'jjl-projects)
