#!/usr/bin/guile -s
!#

(load "config.scm")
(display "checking current-file-name variable...")
(newline)
(display "It is: ")
(display
	(assoc-ref config-pairs 'current-file-name
	)
)
(newline)
(set! config-pairs
	(assoc-set! config-pairs 'current-file-name "test"
	)
)
(display "checking current-file-name variable...")
(newline)
(display "It is: ")
(display
	(assoc-ref config-pairs 'current-file-name
	)
)
(newline)
(display "checking update-config procedure...")
(newline)
(update-config)
(display "having called the function")
(newline)
(system "cat ./config.scm")
