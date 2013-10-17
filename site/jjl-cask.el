
; This tries to find the homebrew cask.el if it is installed
(defun find-homebrew-cask-el ()
  (let ((prefix "/usr/local/Cellar/cask"))
    (if (file-exists-p prefix)
	; This will break if cask changes version numbering
	(let ((files (directory-files prefix nil "[0-9]+\\.[0-9]+\\.[0-9]+")))
	  (if (null files)
	      nil
	      (let ((filename (format "%s/%s/%s" prefix (car files) "cask.el")))
		(if (file-exists-p filename)
		    filename
		    nil))))
        nil)))

(defun find-cask-el ()
  (let ((homebrew-cask-el (find-homebrew-cask-el))
	(homedir-cask-el "~/.cask/cask.el"))
    (or homebrew-cask-el homedir-cask-el)))

(defun jjl-cask-setup ()
  (let ((cask-el (find-cask-el)))
    (when cask-el
      (progn
	(require 'cask cask-el)
	(cask-setup jjl-base-dir)
	t))))

(setq jjl-using-cask (jjl-cask-setup))
(provide 'jjl-cask)
