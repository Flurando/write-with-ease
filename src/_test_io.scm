#!/usr/bin/guile -s
!#

(load "io.scm")
(display "checking display-entire-file procedure...")
(newline)
(define file-name "./_test_io_scm_data")
(display-entire-file file-name)
(display "checking append-single-line procedure...")
(newline)
(define line-to-append "test")
(append-single-line file-name line-to-append)
(display "running display-entire-file procedure...")
(newline)
(display-entire-file file-name)
(display "the checking procedure is over. Quiting...")
(newline)
