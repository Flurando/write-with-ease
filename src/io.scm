(use-modules (ice-9 textual-ports))

(define (display-entire-file file-name)
	(call-with-input-file file-name
		(lambda (input-port)
			(display "[start of file]")
			(newline)
			(let loop ()
				(let ((line (get-line input-port)))
					(if (eof-object? line)
						(begin
							(display "[end of file]")
							(newline)
						)
						(begin
							(display line)
							(newline)
							(loop)
						)
					)
				)
			)
			'file-reading-ends-successfully
		)
	)
	'func-end-ok
)

(define (append-single-line file-name line-without-newline-to-append)
	(let ((output-port (open-file file-name "a")))
		(display line-without-newline-to-append output-port)
		(newline output-port)
		(close-port output-port)
		'file-writing-ends-successfully
	)
	'func-end-ok
)
