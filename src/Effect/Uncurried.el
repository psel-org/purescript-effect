;; -*- lexical-binding: t; -*-

(defvar Effect.Uncurried.mkEffectFn1
  (lambda (fn)
    (lambda (a)
      (funcall (funcall fn a)))))

(defvar Effect.Uncurried.mkEffectFn2
  (lambda (fn)
    (lambda (a b)
      (funcall (funcall (funcall fn a) b)))))

(defvar Effect.Uncurried.mkEffectFn3
  (lambda (fn)
    (lambda (a b c)
      (funcall (funcall (funcall (funcall fn a) b) c)))))

(defvar Effect.Uncurried.mkEffectFn4
  (lambda (fn)
    (lambda (a b c d)
      (funcall (funcall (funcall (funcall (funcall fn a) b) c) d)))))

(defvar Effect.Uncurried.mkEffectFn5
  (lambda (fn)
    (lambda (a b c d e)
      (funcall (funcall (funcall (funcall (funcall (funcall fn a) b) c) d) e)))))

(defvar Effect.Uncurried.mkEffectFn6
  (lambda (fn)
    (lambda (a b c d e f)
      (funcall (funcall (funcall (funcall (funcall (funcall (funcall fn a) b) c) d) e) f)))))

(defvar Effect.Uncurried.mkEffectFn7
  (lambda (fn)
    (lambda (a b c d e f g)
      (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall fn a) b) c) d) e) f) g)))))

(defvar Effect.Uncurried.mkEffectFn8
  (lambda (fn)
    (lambda (a b c d e f g h)
      (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall fn a) b) c) d) e) f) g) h)))))

(defvar Effect.Uncurried.mkEffectFn9
  (lambda (fn)
    (lambda (a b c d e f g h i)
      (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall fn a) b) c) d) e) f) g) h) i)))))

(defvar Effect.Uncurried.mkEffectFn10
  (lambda (fn)
    (lambda (a b c d e f g h i j)
      (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall (funcall fn a) b) c) d) e) f) g) h) i) j)))))

(defvar Effect.Uncurried.runEffectFn1
  (lambda (fn)
    (lambda (a)
      (lambda ()
        (funcall fn a)))))

(defvar Effect.Uncurried.runEffectFn2
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda ()
          (funcall fn a b))))))

(defvar Effect.Uncurried.runEffectFn3
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda ()
            (funcall fn a b c)))))))

(defvar Effect.Uncurried.runEffectFn4
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda ()
              (funcall fn a b c d))))))))

(defvar Effect.Uncurried.runEffectFn5
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda (e)
              (lambda ()
                (funcall fn a b c d e)))))))))

(defvar Effect.Uncurried.runEffectFn6
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda (e)
              (lambda (f)
                (lambda ()
                  (funcall fn a b c d e f))))))))))

(defvar Effect.Uncurried.runEffectFn7
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda (e)
              (lambda (f)
                (lambda (g)
                  (lambda ()
                    (funcall fn a b c d e f g)))))))))))

(defvar Effect.Uncurried.runEffectFn8
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda (e)
              (lambda (f)
                (lambda (g)
                  (lambda (h)
                    (lambda ()
                      (funcall fn a b c d e f g h))))))))))))

(defvar Effect.Uncurried.runEffectFn9
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda (e)
              (lambda (f)
                (lambda (g)
                  (lambda (h)
                    (lambda (i)
                      (lambda ()
                        (funcall fn a b c d e f g h i)))))))))))))

(defvar Effect.Uncurried.runEffectFn10
  (lambda (fn)
    (lambda (a)
      (lambda (b)
        (lambda (c)
          (lambda (d)
            (lambda (e)
              (lambda (f)
                (lambda (g)
                  (lambda (h)
                    (lambda (i)
                      (lambda (j)
                        (lambda ()
                          (funcall fn a b c d e f g h i j))))))))))))))
