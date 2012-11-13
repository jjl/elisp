;Constants we can use in cust code
(setq elisp-base-dir (file-name-directory (or load-file-name buffer-file-name)))
(setq elisp-vendor-dir (concat elisp-base-dir "vendor/"))
(setq elisp-site-dir (concat elisp-base-dir "site/"))
(setq elisp-cust-dir (concat elisp-base-dir "cust/"))

;Add the cust dir to the list
(add-to-list 'load-path elisp-cust-dir)

; Load our customisation modules
(require 'elisp-globals)
(require 'elisp-coffee-mode)
(require 'elisp-scala-mode)
(require 'elisp-php-mode)
(require 'elisp-haskell-mode)
(require 'elisp-scss-mode)
(require 'elisp-less-css-mode)
(require 'elisp-cperl-mode)
(require 'elisp-js2-mode)
(require 'elisp-web-mode)
(require 'elisp-yaml-mode)
(require 'elisp-iswitchb-mode)
(require 'elisp-clojure-mode)