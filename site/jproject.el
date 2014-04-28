(require 'jproject-util)
(require 'jproject-registry)

(defvar jproject/projects '())
(defun nil-f (&rest r) nil)
(defun jproject/define (name pred)
  (setq jproject/projects
        (jproject/registry/define jproject/projects name pred)))
(defun jproject/hook (project hook callback)
  (setq jproject/projects (jproject/registry/hook jproject/projects project hook callback)))
(defun jproject/call-hook (hook)
  (jproject/registry/call-hook-on-project jproject/projects 'default hook (buffer-file-name))
  (jproject/registry/call-hook jproject/projects hook (buffer-file-name)))

; Define a 'default' project
(setq jproject/projects (jproject/define 'default 'nil-f))

(provide 'jproject)
