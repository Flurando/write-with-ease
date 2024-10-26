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
	 (let ((input-line (read-line)))
	   (cond
	    ((string=? input-line "/quit") (break 'while-loop-end-successfully))
	    ((string=? input-line "/set") (set! new-file-to-edit (set-new-file-to-edit (ask-file-name))))
	    ((string=? input-line "/show") (display-entire-file new-file-to-edit))
	    ((string=? input-line "/help") (display-help-message))
	    (else (append-single-line new-file-to-edit input-line)))))
  (if (not (string=? old-file-to-edit new-file-to-edit)) (update-config))
  0)
