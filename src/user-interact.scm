(use-modules (ice-9 rdelim))

(define (set-new-file-to-edit file-name)
  (set! config-pairs
	(assoc-set! config-pairs 'current-file-name file-name))
  file-name)

(define (ask-file-name)
  (define file-name)
  (while #t
	 (display "enter the file name: ")
	 (set! file-name (read-line))
	 (display "Sure?[Y/N]")
	 (if (string=? (read-line) "Y") (break)))
  file-name)

(define (display-help-message)
  (display "availuable commands:/quit, /set, /show, /help")
  (newline)
  'func-end-ok)
