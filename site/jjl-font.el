(require 'font-utils) ; font-utils-first-existing-font

(defun jjl-font/set (name size)
  (set-default-font (s-join " " name size)))

(defun jjl-font/go ()
  (let ((selected (jjl-font/select)))
    (unless (nil? selected)
      (jjl-font/set selected "16"))))

(defun jjl-font/select ()
  (let ((fun font-utils-first-existing-font))
    (fun '("Consolas" ; Comes with MS Office and other stuff
	   "Inconsolata" ; http://www.levien.com/type/myfonts/inconsolata.html
	   "Deja Vu Sans Mono" ; http://dejavu-fonts.org/wiki/index.php?title=Main_Page
	   "Droid Sans Mono" ; http://damieng.com/blog/2007/11/14/droid-font-family-courtesy-of-google-ascender
	   "Anonymous Pro" ; http://hivelogic.com/articles/anonymous-pro-programming-monospace-font
	   "Monaco")))) ; Comes with OSX

(provide 'jjl-font)
