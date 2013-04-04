;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                  ;;;
;;; Free Software published under an MIT-like license. See LICENSE   ;;;
;;;                                                                  ;;;
;;; Copyright (c) 2012 Google, Inc.  All rights reserved.            ;;;
;;;                                                                  ;;;
;;; Original author: Alejandro Sedeño                                ;;;
;;;                                                                  ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :qmynd-impl)

;;; Stuff in here should find a more permanent home as the library
;;; evolves.

(defun mysql-cs-coll-to-character-encoding (cs-coll)
  "Maps a MySQL Character Set / Collation identifier to an encoding."
  (ecase cs-coll
    (#.+mysql-cs-coll-latin1-swedish-ci+ :iso-8859-1)
    (#.+mysql-cs-coll-utf8-general-ci+ :utf-8)
    (#.+mysql-cs-coll-utf8-binary+ :utf-8)
    (#.+mysql-cs-coll-ascii-general-ci+ :us-ascii)
    (#.+mysql-cs-coll-ascii-binary+ :us-ascii)
    (#.+mysql-cs-coll-binary+ nil)))
