;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                  ;;;
;;; Free Software published under an MIT-like license. See LICENSE   ;;;
;;;                                                                  ;;;
;;; Copyright (c) 2012 Google, Inc.  All rights reserved.            ;;;
;;;                                                                  ;;;
;;; Original author: Alejandro Sedeño                                ;;;
;;;                                                                  ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "CL-USER")


(asdf:defsystem :cl-mysqlnd
  :name "CL MySQL Native Driver"
  :author "Alejandro Sedeño"
  :version "1.0"
  :licence "MIT-style"
  :maintainer '("Alejandro Sedeño")
  :description      "MySQL Native Driver for Common Lisp"
  :long-description "MySQL Native Driver for Common Lisp"
  :depends-on (:babel :flexi-streams)
  :serial nil
  :components
    ((:module "packages"
              :serial nil
              :pathname #p""
              :components ((:file "pkgdcl")))
     (:module "common"
              :serial nil
              :pathname #p""
              :depends-on ("packages")
              :components ((:file "constants")
                           (:file "utilities")
                           (:file "misc")))
     (:module "wire-protocol"
              :serial nil
              :pathname #p""
              :depends-on ("common")
              :components ((:file "wire-packet")))
     (module "payload-decoding"
             :serial nil
             :pathname #p""
             :depends-on ("common")
             :components ((:file "integers")
                          (:file "strings")
                          (:file "response-packets")))))

(pushnew :cl-mysqlnd *features*)
