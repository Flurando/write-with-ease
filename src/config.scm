(define config-pairs
	(list
		(cons 'current-file-name "")
		(cons 'default-mode "read")
	)
)

(define (update-config)
	(let*
		(
			(new-file-name (assoc-ref config-pairs 'current-file-name))
			(command-to-run (format #f "sed -i '0,/current-file-name\\s*\"[^\"]*\"/s//current-file-name \"~a\"/' ./config.scm" new-file-name))
		)
		(display "new-file-name: ")
		(display new-file-name)
		(newline)
		(display "command-to-run: ")
		(display command-to-run)
		(newline)
		(let
			(
				(exit-code (system command-to-run))
			)
			(if (not (= exit-code 0))
				(begin
    					(display "Error executing sed command.")
    					(newline)
    				)
    				(begin
    					(display "sed command executed successfully.")
    					(newline)
    				)
    			)
    		)
	)
)
