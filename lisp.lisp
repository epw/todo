(load "/home/eric/.sbclrc")

(defun -main ()
  (if (null (second *posix-argv*))
      (format *error-output* "Usage: lisp <script.lisp>~%")
      (load (second *posix-argv*)))
  0)

(sb-ext:save-lisp-and-die "lisp" :executable t :toplevel '-main)
