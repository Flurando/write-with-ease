(define-module (writer fetch-text-file)
  #:use-module (ice-9 textual-ports)
  #:export (load-text!))

(define (load-text! file-name)
  (let* ((p (open-file file-name "r"))
	 (tmp (get-string-all p)))
    (close-port p)
    (if (eof-object? tmp)
	""
	tmp)))
