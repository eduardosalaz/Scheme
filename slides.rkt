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
;También como su nombre lo indica, slideshow sirve para crear slides, justo como un pptx.
(slide
 #:title "Hola desde Racket, este es un título"
 (t "Este es un texto")
 (t "Este es otro texto"))
;Es importante recordar que (slide) es una función.
(define (slide-n n)
  (slide
   #:title "Creador de Slides"
   (item "Esta es la slide número"(number->string n))))
(slide-n 1)
(slide-n 2)
(slide-n 3)

;También como su nombre lo indica, slideshow sirve para crear slides, justo como un pptx.
(slide
 #:title "Hola desde Racket, este es un título"
 (t "Este es un texto")
 (t "Este es otro texto"))

;Es importante recordar que (slide) es una función.

(define (slide-n n)
  (slide
   #:title "Creador de Slides"
   (item "Esta es la slide número"(number->string n))))

(slide-n 1)
(slide-n 2)
(slide-n 3)
