;; -*- lexical-binding: t; -*-

(require 'Data.Unit)

(defvar Effect.pureE
  (lambda (a)
    (lambda ()
      a)))

(defvar Effect.bindE
  (lambda (a)
    (lambda (f)
      (lambda ()
        (funcall (funcall f (funcall a)))))))

(defvar Effect.untilE
  (lambda (f)
    (lambda ()
      (while (not (funcall f))))))

(defvar Effect.whileE
  (lambda (f)
    (lambda (a)
      (lambda ()
        (while (funcll f) (funcall a))
        Data.Unit.unit))))

(defvar Effect.forE
  (lambda (lo)
    (lambda (hi)
      (lambda (f)
        (lambda ()
          (let ((i lo))
            (while (< i hi)
              (funcall (funcall f i))
              (setq i (1+ i)))
            Data.Unit.unit))))))

(defvar Effect.foreachE
  (lambda (as)
    (lambda (f)
      (lambda ()
        (seq-do (lambda (a) (funcall (funcall f a))) as)
        Data.Unit.unit))))
