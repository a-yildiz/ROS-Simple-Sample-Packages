
(cl:in-package :asdf)

(defsystem "ogretici_paket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BataryaDurum" :depends-on ("_package_BataryaDurum"))
    (:file "_package_BataryaDurum" :depends-on ("_package"))
  ))