; Constants
(defconst jjl/base-dir (file-name-directory (or load-file-name buffer-file-name)))
(defconst jjl/vendor-dir (concat jjl/base-dir "vendor/"))
(defconst jjl/site-dir (concat jjl/base-dir "site/"))
(defconst jjl/cust-dir (concat jjl/base-dir "cust/"))

(add-to-list 'load-path jjl/site-dir) ; Some things will just be individual files in here
(add-to-list 'load-path jjl/cust-dir) ; Customisations will always be single files

; We've switched to cask
(require 'auto-cask)
(setq auto-casked (auto-cask/setup jjl/base-dir))

; Things that do not require anything not in emacs 24 core
(require 'al-util)
(require 'jjl-projects)
(require 'emacs-cust)
(require 'xmlpp)

; These things require that we have been auto-casked
(when auto-casked
  (require 'emacs-extra-cust)
  (require 'ag-cust)
  (require 'cedet-cust)
  (require 'ctags-cust)
  (require 'clojure-mode-cust)
  (require 'coffee-mode-cust)
  (require 'cperl-mode-cust)
  (require 'flycheck-mode-cust)
  (require 'haskell-mode-cust)
  (require 'iswitchb-mode-cust)
  (require 'less-css-mode-cust)
  (require 'js2-mode-cust)
  (require 'magit-cust)
  (require 'markdown-mode-cust)
  (require 'php-mode-cust)
  (require 'powerline-cust)
  (require 'rainbow-delimiters-cust)
  (require 'sass-mode-cust)
  (require 'scala-mode-cust)
  (require 'scss-mode-cust)
  (require 'solarized-theme-cust)
  (require 'tt-mode-cust)
  (require 'web-mode-cust)
  (require 'yaml-mode-cust))

(provide 'elisp)
