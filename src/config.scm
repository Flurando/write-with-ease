(define config-pairs
	(list
		(cons 'current-file-name "")
		(cons 'default-mode "read")
	)
)

;;;TODO: need formating the string elsewhere quickly instead of typing by hand.
;;;automatic config-pairs key generating are preferred.
(define (update-config)
	(display "running update-config...\n")
	(let ((new-file-name (assoc-ref config-pairs 'current-file-name)))
		(system
			(format #f "sed -i 's/\"^*\"/\"~a\"/1' ./config.scm" new-file-name
			)
		)
	)
)
