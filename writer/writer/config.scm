(define-module (writer config)
  #:export (get-config
	    set-config!))

(define *config*
  '((file . "./test/test.txt")))

(define (get-config key)
  (let ((tmp (assq-ref *config* key)))
    (if tmp
	(raise-exception (make-exception-with-message "no such key in *config*"))
	tmp)))

(define (set-config! key value)
  *unspecified*)
