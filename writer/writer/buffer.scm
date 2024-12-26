(define-module (writer buffer)
  #:use-module (writer fetch-text-file)
  #:use-module (writer save-text-file)
  #:use-module (writer config)
  #:use-module (srfi srfi-9)
  #:export (create-buffer
	    load-buffer!
	    save-buffer!
	    clear-buffer!
	    buffer?
	    append-text!
	    insert-text!
	    delete-text!
	    move-cursor!
	    set-cursor!))

(define-record-type buffer
  (%create-buffer content cursor)
  buffer?
  (content buffer-content set-content!)
  (cursor buffer-cursor set-cursor!))

(define (create-buffer)
  (%create-buffer "" 0))

(define (load-buffer! buffer)
  (set! buffer (load-text! (get-config 'file))));file name should be retreived from config

(define (save-buffer! buffer)
(define (clear-buffer! buffer)
  (set-content! buffer "")
  (set-cursor! buffer 0))

(define (append-text! buffer text)
  (set-content! buffer (string-append (content-buffer buffer) text)))

(define (insert-text! buffer text position)
  *unspecified*)

(define (delete-text! buffer)
  (set-content! buffer ""))

(define (move-cursor! step)
  *unspecified*)

(define (set-cursor! position)
  *unspecified*)
