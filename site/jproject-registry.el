(eval-when-compile (setq jproject/registry/run-tests t))

(require 'cl)
(require 'jproject-util)

(defun -jp/p1h1 (h f) 1)
(defun -jp/p1h2 (h f) 2)
(defun -jp/p2h1 (h f) 3)
(defun -jp/p1p (f) (= f 1))
(defun -jp/p2p (f) (= f 2))

(defun jproject/registry/define (projects name pred)
  (when (--any? (jproject/util/eqv? name (car it)) projects)
    (error "project %s is already defined" name))
  (cons (list name pred) projects))

(defun jproject/registry/exists? (projects name)
  (let ((matches (--filter (jproject/util/eqv? name (car it)) projects)))
    matches))

(defun jproject/registry/hook (projects project hook callback)
  (if (jproject/registry/exists? projects project)
    (-map (lambda (l-project)
            (if (jproject/util/eqv? (car l-project) project)
              (if (not (--any? (eq (car it) hook) (cddr l-project)))
                (-insert-at 2 (cons hook callback) l-project)
                (error "Project %s already has a hook for %s" project hook))
              l-project)) projects) 
    (error "Cannot hook project %s: does not exist" project)))

(defun jproject/registry/find-hook-in-project (project hook)
  (--keep (when (jproject/util/eqv? (car it) hook)
            (cdr it))
          (cddr project)))

(defun jproject/registry/directly-call-hook (hook filename)
  (funcall hook hook filename))

(defun jproject/registry/projects-named (projects name)
  (--filter (progn (jproject/util/eqv? (car it) name)) projects))

(defun jproject/registry/projects-matching (projects filename)
  (--filter (funcall (cadr it) filename) projects))

(defun jproject/registry/find-hook (projects hook filename)
  (let ((matching-ps (jproject/registry/projects-matching projects filename)))
    (-flatten
     (--map
      (progn (jproject/registry/find-hook-in-project it hook))
      matching-ps))))

(defun jproject/registry/find-hook-on-project (projects project hook)
  (let ((matching-ps (jproject/registry/projects-named projects project)))
    (-flatten
     (--map
      (progn (jproject/registry/find-hook-in-project it hook))
      matching-ps))))

(defun jproject/registry/call-hook (projects hook filename)
  (--map (progn (jproject/registry/directly-call-hook it filename))
         (jproject/registry/find-hook projects hook filename)))

(defun jproject/registry/call-hook-on-project (projects project hook filename)
  (--map (progn (jproject/registry/directly-call-hook it filename))
         (jproject/registry/find-hook-on-project projects project hook)))

(defun -jp/id2 (a b) b)

(when jproject/registry/run-tests
  (let ((reg '())
        (reg2 '((testproj -jp/p1p)))
        (reg3 '((testproj
                 -jp/p1p
                 (testproj-hook . -jp/p1h1))))
        (reg4 '((testproj
                 -jp/p1p
                 (testproj-hook2 . -jp/p1h2)
                 (testproj-hook . -jp/p1h1))))
        (reg5 '((testproj2 -jp/p2p)
                (testproj
                 -jp/p1p
                 (testproj-hook2 . -jp/p1h2)
                 (testproj-hook . -jp/p1h1))))
        (reg6 '((testproj2
                 -jp/p2p
                 (testproj2-hook . -jp/p2h1))
                (testproj
                 -jp/p1p
                 (testproj-hook2 . -jp/p1h2)
                 (testproj-hook . -jp/p1h1)))))
    (assert (= 1 (jproject/registry/directly-call-hook '-jp/id2 1)))
    (assert (= 2 (jproject/registry/directly-call-hook '-jp/id2 2)))
    (assert (jproject/util/eqv? reg2 (jproject/registry/define
                                      reg 'testproj '-jp/p1p)))
    (assert (jproject/util/eqv? reg3 (jproject/registry/hook
                                      reg2 'testproj 'testproj-hook
                                      '-jp/p1h1)))
    (assert (jproject/util/eqv? reg4 (jproject/registry/hook
                                      reg3 'testproj 'testproj-hook2
                                      '-jp/p1h2)))
    (assert (jproject/util/eqv? reg5 (jproject/registry/define
                                      reg4 'testproj2 '-jp/p2p)))
    (assert (fboundp (cadr (car reg6))))
    (assert (jproject/util/eqv? reg6 (jproject/registry/hook
                                      reg5 'testproj2 'testproj2-hook
                                      '-jp/p2h1)))
    (assert (jproject/util/eqv? (cons (cadr reg6) nil)
                                (jproject/registry/projects-matching reg6 1)))
    (assert (jproject/util/eqv? (cons (car reg6) nil)
                                (jproject/registry/projects-matching reg6 2)))
    (assert (jproject/registry/exists? reg6 'testproj))
    (assert (jproject/registry/exists? reg6 'testproj2))
    (assert (not (jproject/registry/exists? reg6 'testproj3)))
    (assert (null (jproject/registry/projects-matching reg6 3)))
    (assert (jproject/util/eqv? '(-jp/p2h1)
             (jproject/registry/find-hook-in-project (car reg6) 'testproj2-hook)))
    (assert (jproject/util/eqv? '(-jp/p1h1)
             (jproject/registry/find-hook-in-project (cadr reg6) 'testproj-hook)))
    (assert (jproject/util/eqv? '(-jp/p1h2)
             (jproject/registry/find-hook-in-project (cadr reg6) 'testproj-hook2)))
    (assert (null (jproject/registry/find-hook-in-project (cadr reg6) 'testproj2-hook)))
    (assert (jproject/util/eqv? '(-jp/p1h1)
                                (jproject/registry/find-hook reg6 'testproj-hook 1)))
    (assert (jproject/util/eqv? '(-jp/p1h2)
                                (jproject/registry/find-hook reg6 'testproj-hook2 1)))
    (assert (jproject/util/eqv? '(-jp/p2h1)
                                (jproject/registry/find-hook reg6 'testproj2-hook 2)))
    (assert (jproject/util/eqv? '(1)
                                (jproject/registry/call-hook reg6 'testproj-hook 1)))
    (assert (jproject/util/eqv? '(2)
                                (jproject/registry/call-hook reg6 'testproj-hook2 1)))
    (assert (jproject/util/eqv? '(3)
                                (jproject/registry/call-hook reg6 'testproj2-hook 2)))))

(provide 'jproject-registry)
