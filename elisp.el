;Constants we can use in cust code
(setq jjl-base-dir (file-name-directory (or load-file-name buffer-file-name)))
(setq jjl-vendor-dir (concat jjl-base-dir "vendor/"))
(setq jjl-site-dir (concat jjl-base-dir "site/"))
(setq jjl-cust-dir (concat jjl-base-dir "cust/"))

(add-to-list 'load-path jjl-site-dir) ; Some things will just be individual files in here
(add-to-list 'load-path jjl-cust-dir) ; Customisations will always be single files

(require 'jjl-cask)

(if jjl-using-cask
    (progn
      (require 'clojure-mode-cust)
      (require 'coffee-mode-cust)
      (require 'cperl-mode-cust)
      (require 'haskell-mode-cust)
;      (require 'iswitchb-mode-cust)
      (require 'less-css-mode-cust)
      (require 'js2-mode-cust)
      (require 'magit-cust)
      (require 'markdown-mode-cust)
      (require 'php-mode-cust)
      (require 'sass-mode-cust)
      (require 'scala-mode-cust)
      (require 'scss-mode-cust)
      (require 'tt-mode-cust)
      (require 'web-mode-cust)
      (require 'yaml-mode-cust)
      t))
