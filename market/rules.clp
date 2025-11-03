;; Definir reglas para recomendar productos a usuarios dependiendo de lo que compren
(defrule promo-banamex
   (order (producto iPhone16) (metodo-pago banamex))
   =>
   (printout t "Oferta: 24 meses sin intereses con Banamex al comprar iPhone16" crlf))

(defrule combo-macbook-iphone
   (order (producto iPhone16) (qty ?q1&:(> ?q1 0)))
   (order (producto macbookpro) (qty ?q2&:(> ?q2 0)))
   (smartphone (modelo iPhone16) (precio ?ps))
   (compu (modelo macbookpro) (precio ?pc))
   =>
   (bind ?total (+ ?ps ?pc))
   (bind ?descuento (* ?total 0.10))
   (printout t "Oferta: $" ?descuento " en vales por compra de " ?total" al contado" crlf))

(defrule accesorio-telefono
   (order (Cliente ?c) (producto ?p))
   (smartphone (modelo ?p))
   =>
   (assert (recomendado (cliente ?c) (producto funda) (motivo "Complemento para smartphone")))
  
)

(defrule accesorio-compu
 (order (Cliente ?c) (producto ?p))
 (compu (modelo ?p))
 =>
 (assert (recomendado (cliente ?c) (producto mica) (motivo "Proteccion extra")))
)


(defrule mostrar-recomendaciones
   ?r <- (recomendado (cliente ?c) (producto ?p) (motivo ?m))
   =>
   (printout t "Recomendar a " ?c ": " ?p " (" ?m ")" crlf)
   (retract ?r))


(defrule recomendar-mayorista
   (order (Cliente ?c) (qty ?q&:(and (numberp ?q) (> ?q 10))))
   =>
   (printout t "Cliente " ?c " es mayorista. Aplican descuentos por volumen." crlf))







