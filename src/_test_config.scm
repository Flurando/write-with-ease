#!/usr/bin/guile -s
!#

(load "./config.scm")
(define command-to-check-config-file "head -3 ./config.scm")
(display "checking current-file-name variable...")
(newline)
(display "It is: ")
(define current-file-name-storer
	(assoc-ref config-pairs 'current-file-name
	)
)
(display current-file-name-storer)
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
(display
	(string-append "running " command-to-check-config-file
	)
)
(newline)
(system command-to-check-config-file)
(display "checking current-file-name variable...")
(newline)
(display "It is: ")
(display
	(assoc-ref config-pairs 'current-file-name
	)
)
(newline)
(display "reversing change...")
(newline)
(set! config-pairs
	(assoc-set! config-pairs 'current-file-name current-file-name-storer
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
(display "running update-config procedure...")
(newline)
(update-config)
(display "having called the function")
(newline)
(display
	(string-append "running " command-to-check-config-file
	)
)
(newline)
(system command-to-check-config-file)
(display "the checking procedure is over. Quiting...")
(newline)
