;; -*- lexical-binding: t; -*-

(defvar Effect.Unsafe.unsafePerformEffect
  (lambda (f)
    (funcall f)))
