
(cl:in-package :asdf)

(defsystem "fundamentals-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TimePast" :depends-on ("_package_TimePast"))
    (:file "_package_TimePast" :depends-on ("_package"))
  ))