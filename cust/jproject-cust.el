; default
(defun jp/default/cider-mode-hook (h f)
  (enable-auto-complete)
  (cider-turn-on-eldoc-mode)
  (rainbow-delimiters-mode)
  (set (make-local-variable 'nrepl-hide-special-buffers) t))
(defun jp/default/cider-repl-mode-hook (h f)
  (enable-auto-complete)
  (define-key cider-repl-mode-map (kbd "C-c C-d") 'ac-nrepl-compliment-popup-doc))
(defun jp/default/coffee-mode-hook (h f)
  ; Nodejs gets very nested
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'indent-tabs-mode) t))
(defun jp/default/clojure-mode-hook (h f)
  (show-paren-mode)
  (set (make-local-variable 'tab-width) 2)
  (cider-mode)
  ; TODO: make this be called on indent and newline
  (define-key clojure-mode-map (kbd "C-c C-a") 'align-cljlet))
(defun jp/default/emacs-lisp-mode-hook (h f)
  (set (make-local-variable 'indent-tabs-mode) nil)
  (define-key emacs-lisp-mode-map
    "\C-x\C-e" 'pp-eval-last-sexp)
  (eldoc-mode))
(defun jp/default/js2-mode-hook (h f)
  (set (make-local-variable 'js2-pretty-multiline-declarations) t)
  (set (make-local-variable 'indent-tabs-mode) nil)
  (set (make-local-variable 'tab-width) 2))
(defun jp/default/haskell-mode-hook (h f)
  (set (make-local-variable 'tab-width) 2)
  ; This mode seems to irritate me the least at the minute
  (haskell-indent-mode))
(defun jp/default/less-css-mode-hook (h f)
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'indent-tabs-mode) nil))
(defun jp/default/markdown-mode-hook (h f)
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'indent-tabs-mode) nil))
(defun jp/default/php-mode-hook (h f)
  (c-set-style "jjl-php"))
(defun jp/default/sass-mode-hook (h f)
  (set (make-local-variable 'indent-tabs-mode) nil)
  (set (make-local-variable 'tab-width) 2)
  ; Turn off automatic compilation since I use it with `compass watch`
  (set (make-local-variable 'sass-compile-at-save) nil))
(defun jp/default/scala-mode-hook (h f)
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'indent-tabs-mode) nil))
(defun jp/default/scss-mode-hook (h f)
  (set (make-local-variable 'indent-tabs-mode) nil)
  (set (make-local-variable 'tab-width) 2)
  ; Turn off automatic compilation since I use it with `compass watch`
  (set (make-local-variable 'scss-compile-at-save) nil))
(defun jp/default/tt-mode-hook (h f)
  (set (make-local-variable 'indent-tabs-mode) nil)
  (set (make-local-variable 'tab-width) 2))
(defun jp/default/web-mode-hook (h f)
  (set (make-local-variable 'web-mode-html-offset) 2)
  (set (make-local-variable 'web-mode-css-offset) 2)
  (set (make-local-variable 'web-mode-script-offset) 2)
  (set (make-local-variable 'web-mode-autocompletes-flag) nil))
(defun jp/default/yaml-mode-hook (h f)
  (set (make-local-variable 'tab-width) 2))
; openeyes
(defun jp/openeyes-p (f)
  (or (jproject/util/file-deeply-in-dir? f "/Users/jjl/code/beavrs")
      (jproject/util/file-deeply-in-dir? f "/Users/jjl/code/openeyes")))
(defun jp/openeyes/js2-mode-hook (h f)
  (set (make-local-variable 'indent-tabs-mode) t)
  (set (make-local-variable 'js2-basic-offset) 2)
  (set (make-local-variable 'tab-width) 2))
(defun jp/openeyes/php-mode-hook (h f)
  (c-set-style "oe-php"))
; setups
(defun jp/default-setup ()
  (let ((jjl-php-style '((c-offsets-alist . ((arglist-close . 0)
                                             (arglist-cont-nonempty . +)
                                             (case-label . +)))
                         (indent-tabs-mode . t)
                         (comment-start . "// ")
                         (comment-end . "")
                         (comment-multi-line nil))))
    (c-add-style "jjl-php" jjl-php-style))
  (jproject/hook 'default 'cider-mode-hook      'jp/default/cider-mode-hook)
  (jproject/hook 'default 'cider-repl-mode-hook 'jp/default/cider-repl-mode-hook)
  (jproject/hook 'default 'clojure-mode-hook    'jp/default/clojure-mode-hook)
  (jproject/hook 'default 'coffee-mode-hook     'jp/default/coffee-mode-hook)
  (jproject/hook 'default 'emacs-lisp-mode-hook 'jp/default/emacs-lisp-mode-hook)
  (jproject/hook 'default 'haskell-mode-hook    'jp/default/haskell-mode-hook)
  (jproject/hook 'default 'js2-mode-hook        'jp/default/js2-mode-hook)
  (jproject/hook 'default 'less-css-mode-hook   'jp/default/less-css-mode-hook)
  (jproject/hook 'default 'markdown-mode-hook   'jp/default/markdown-mode-hook)
  (jproject/hook 'default 'php-mode-hook        'jp/default/php-mode-hook)
  (jproject/hook 'default 'sass-mode-hook       'jp/default/sass-mode-hook)
  (jproject/hook 'default 'scala-mode-hook      'jp/default/scala-mode-hook)
  (jproject/hook 'default 'scss-mode-hook       'jp/default/scss-mode-hook)
  (jproject/hook 'default 'tt-mode-hook         'jp/default/tt-mode-hook)
  (jproject/hook 'default 'web-mode-hook        'jp/default/web-mode-hook)
  (jproject/hook 'default 'yaml-mode-hook       'jp/default/yaml-mode-hook))
(defun jp/openeyes-setup ()
  (let ((oe-php-style '((c-offsets-alist . ((arglist-close . 0)
					    (arglist-cont-nonempty . +)
					    (case-label . +)))
			(indent-tabs-mode . t)
			(comment-start . "// ")
			(comment-end . ""))))
    (c-add-style "oe-php" oe-php-style))
  (jproject/define 'openeyes 'jp/openeyes-p)
  (jproject/hook   'openeyes 'php-mode-hook 'jp/openeyes/php-mode-hook)
  (jproject/hook   'openeyes 'js2-mode-hook 'jp/openeyes/js2-mode-hook))

(require 'jproject)

(jp/default-setup)
(jp/openeyes-setup)
(provide 'jproject-cust)