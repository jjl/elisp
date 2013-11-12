(defvar jjl-projects/base-dirs '("~/code" "~/src"))

(defun jjl-projects/is-project? (path)
  (let ((tags-path (concat path "TAGS"))
	(projectile-path (concat path ".projectile")))
    (and (file-directory-p path)
	 (or (file-exists-p tags-path)
	     (file-exists-p projectile-path)))))

(defun jjl-projects/projects-from (path)
  (-filter 'jjl-projects/is-project? (directory-names path t)))

(defun jjl-projects/tags-list ()
  (-mapcat 'jjl-projects/projects-from jjl-projects/base-dirs))

(defun jjl-projects/to-list ()
  "Gets my projects as a list"
  (directory-names t)

(provide 'jjl-projects)
