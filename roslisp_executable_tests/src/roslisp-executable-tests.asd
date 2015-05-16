(in-package :asdf)

(defsystem :roslisp-executable-tests
  :name "roslisp-executable-tests"
  :depends-on ("roslisp")
  :components
  ((:file "package")
   (:file "source" :depends-on ("package"))))
