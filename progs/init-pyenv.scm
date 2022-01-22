(define (python-serialize lan t)
  (with u (pre-serialize lan t)
    (with s (texmacs->code (stree->tree u) "SourceCode")
      (string-append  s  "\n<EOF>\n"))))

(define (python-entry)
  (if (url-exists? "$TEXMACS_HOME_PATH/plugins/tmpy")
      (string-append (getenv "TEXMACS_HOME_PATH")
                     "/plugins/tmpy/session/tm_python.py")
      (string-append (getenv "TEXMACS_PATH")
                     "/plugins/tmpy/session/tm_python.py")))

(define (pyenv-root) (string-append (getenv "HOME") "/.pyenv"))

(define (pyenv-command)
  (string-append (pyenv-root) "/bin/pyenv"))

(define (pyenv-virtualenvs)
  (with virtualenvs
        (string-append
         (pyenv-command) " virtualenvs --bare --skip-aliases")
   (string-split
    (var-eval-system virtualenvs) #\newline)))

(define (pyenv-which-python env)
  (string-append (pyenv-root) "/versions/" env "/bin/python"))
  
(define (pyenv-launcher env)
  (string-append (pyenv-which-python env) " " (python-entry)))

(define (other-pyenv-launchers)
  (map (lambda (name) (list :launch name (pyenv-launcher name))) (pyenv-virtualenvs)))

(define (pyenv-launchers)
  (cons (list :launch (string-append "python" (python-entry)))
    (other-pyenv-launchers)))

(plugin-configure python 
  (:require (url-exists? (pyenv-command)))
  (:versions (pyenv-virtualenvs))
  ,@(pyenv-launchers)
  (:serializer ,python-serialize)
  (:session "Python")
  (:scripts "Python"))
