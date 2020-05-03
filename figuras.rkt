#lang slideshow
;En racket los comentarios se escriben con un punto y coma.
;Racket es un derivado de Scheme que a su vez es un dialecto de Lisp.
;Tenemos la misma sintaxis de los paréntesis.
;En Racket podemos definir que lenguaje usaremos, en este caso usaremos el slideshow, abajo se verá porque.
;Racket incluye a racket que es el compilador, interpretador y el runtime, DrRacket que es el entorno
;de desarrollo y raco, que se encarga de ejecutar los comandos de Racket, como instalar o crear librerías.

(circle 10)

;Como estamos usando el "lenguaje" de slideshow, tenemos acceso a la función de dibujar un círculo, el parámetro
;que le pasamos es el del diámetro, pero existen muchos más.
;Realmente slideshow es una librería dentro de Racket pero para simplificar se maneja como un lenguaje.

(rectangle 10 20)

;(circle 10 20) no va a compilar debido a la aridad de los parámetros que le pasamos.

(hc-append (circle 10) (rectangle 10 20))

;Esta función concatena las 2 figuras de manera Horizontal y las Centra de manera vertical.

(disk 40 #:color "Chartreuse" #:border-color "Medium Aquamarine" #:border-width 5)

;Ir por cada uno de los dibujos incluidos en el módulo de pic es bastante tardado.

(define (square n)
  (filled-rectangle n n))

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(define (casillas p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))

(define (chess p)
  (let* ([rp (colorize p "white")]
         [bp (colorize p "black")]
         [c (casillas rp bp)]
         [c4 (four c)])
    (four c4)))

;Un tablero de ajedrez

(chess (square 10))

