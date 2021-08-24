
(cl:in-package :asdf)

(defsystem "simple_applications-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CircularMotion" :depends-on ("_package_CircularMotion"))
    (:file "_package_CircularMotion" :depends-on ("_package"))
  ))