(define config-pairs
	'((current-file-name . "")
	  (default-mode . "read")
	 )
)

;;;TODO: need formating the string elsewhere quickly instead of typing by hand.
;;;automatic config-pairs key generating are preferred.
(define (update-config)
	(display "running update-config...\n")
	(let ((new-file-name (assq-ref config-pairs 'current-file-name)))
		(system
			(format #f "sed -i -e 's/(current-file-name . \\\".*\\\")/(current-file-name . \\\"~a\\\")/' ./config.scm" new-file-name
			)
		)
	)
)
