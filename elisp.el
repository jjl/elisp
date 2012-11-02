;Constants we can use in cust code
(setq elisp-base-dir (file-name-directory (or load-file-name buffer-file-name)))
(setq elisp-vendor-dir (concat elisp-base-dir "vendor/"))
(setq elisp-site-dir (concat elisp-base-dir "site/"))
(setq elisp-cust-dir (concat elisp-base-dir "cust/"))

;Add the cust dir to the list
(add-to-list 'load-path elisp-cust-dir)

;Directories for each module
(let ((coffee-mode-dir (concat elisp-vendor-dir "coffee-mode/"))
      (scala-mode-dir (concat elisp-vendor-dir "scala-mode/"))
      (php-mode-dir (concat elisp-vendor-dir "php-mode/"))
      (haskell-mode-dir (concat elisp-vendor-dir "haskell-mode")))
  (add-to-list 'load-path coffee-mode-dir)
  (add-to-list 'load-path scala-mode-dir)
  (add-to-list 'load-path php-mode-dir)
  (add-to-list 'load-path haskell-mode-dir))

; Load our customisation modules
(require 'elisp-coffee-mode)
(require 'elisp-scala-mode)
(require 'elisp-php-mode)
(require 'elisp-haskell-mode)

; Setup our automatic loading modes
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\Cakefile\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

