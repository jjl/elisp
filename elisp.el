; Add entries to the path for loading all of the modules
(let ((elisp-dir (file-name-directory (or load-file-name buffer-file-name))))
  (let ((vendor-dir (concat elisp-dir "vendor/"))
	(site-dir (concat elisp-dir "site/"))
	(cust-dir (concat elisp-dir "cust/")))
    (add-to-list 'load-path cust-dir)
    (let ((coffee-mode-dir (concat vendor-dir "coffee-mode/"))
	  (scala-mode-dir (concat vendor-dir "scala-mode/")))
      (add-to-list 'load-path coffee-mode-dir)
      (add-to-list 'load-path scala-mode-dir))))

; Load our customisation modules
(require 'elisp-coffee-mode)
(require 'elisp-scala-mode)

; Setup our automatic loading modes
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\Cakefile\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
