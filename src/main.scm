#!/usr/bin/guile \
-e main -s
!#

(define (main)
	(load "./io.scm")
	(load "./config.scm")
	(load "./user-interact.scm")
	(define old-file-to-edit (assoc-ref config-pairs 'current-file-name))
	(define new-file-to-edit old-file-to-edit)
	(while #t
		(let
			(
				(input-line (read-line))
			)
			(cond
				((equal? input-line "/quit") (break 'while-loop-end-successfully))
				((equal? input-line "/set") (set! new-file-to-edit (set-new-file-to-edit (ask-file-name))))
				((equal? input-line "/show") (display-entire-file new-file-to-edit))
				(else (append-single-line new-file-to-edit input-line))
			)
		)
	)
	(if (not (equal? old-file-to-edit new-file-to-edit)) (update-config))
	0
)
