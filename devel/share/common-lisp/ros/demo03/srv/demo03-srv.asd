
(cl:in-package :asdf)

(defsystem "demo03-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "demo01srv" :depends-on ("_package_demo01srv"))
    (:file "_package_demo01srv" :depends-on ("_package"))
  ))