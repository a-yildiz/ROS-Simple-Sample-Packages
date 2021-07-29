
(cl:in-package :asdf)

(defsystem "ogretici_paket-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GecenZaman" :depends-on ("_package_GecenZaman"))
    (:file "_package_GecenZaman" :depends-on ("_package"))
  ))