

(deftemplate customer
  (slot customer-id)
  (multislot name)
  (multislot address)
  (slot phone)
)

(deftemplate product
  (slot part-number)
  (slot name)
  (slot category)
  (slot price)
)

(deftemplate order
  (slot order-number)
  (slot customer-id)
  (slot producto)
  (slot qty)
  (slot metodo-pago)
  (slot Cliente)
)

(deftemplate line-item
  (slot order-number)
  (slot part-number)
  (slot customer-id)
  (slot quantity (default 1)))

(deftemplate smartphone
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio))

(deftemplate compu
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio))

(deftemplate accesorio
   (slot tipo)
   (slot precio))

(deftemplate cliente
   (slot nombre)
   (slot tipo) 
   (slot tarjeta))

(deftemplate tarjetacred
   (slot banco)
   (slot grupo)
   (slot exp-date))

(deftemplate vale
   (slot monto)
   (slot cliente))

(deftemplate recomendado
   (slot cliente)
   (slot producto)
   (slot motivo))



