;Constants we can use in cust code
(setq elisp-base-dir (file-name-directory (or load-file-name buffer-file-name)))
(setq elisp-vendor-dir (concat elisp-base-dir "vendor/"))
(setq elisp-site-dir (concat elisp-base-dir "site/"))
(setq elisp-cust-dir (concat elisp-base-dir "cust/"))

;Add the cust dir to the list
(add-to-list 'load-path elisp-cust-dir)

;We've moved to using Cask
(require 'cask "~/.cask/cask.el")
(cask-setup elisp-base-dir)
(epl-initialize)

; Load our customisation modules
;(require 'elisp-globals)
(require 'coffee-mode-cust)
(require 'cperl-mode-cust)
;(require 'elisp-scala-mode)
;(require 'elisp-php-mode)
;(require 'elisp-haskell-mode)
;(require 'elisp-scss-mode)
;(require 'elisp-less-css-mode)
;(require 'elisp-js2-mode)
;(require 'elisp-web-mode)
;(require 'elisp-yaml-mode)
;(require 'elisp-iswitchb-mode)
;(require 'elisp-clojure-mode)
;(require 'elisp-magit)
;(require 'elisp-tt-mode)
;(require 'elisp-markdown-mode)
