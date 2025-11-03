(deffacts base-datos
   (smartphone (marca apple) (modelo iPhone16) (color rojo) (precio 27000))
   (compu (marca apple) (modelo macbookpro) (color gris) (precio 47000))
   (accesorio (tipo funda) (precio 500))
   (accesorio (tipo mica) (precio 300))
   (tarjetacred (banco banamex) (grupo oro) (exp-date 01-12-23))
   (cliente (nombre juan) (tipo mayorista) (tarjeta banamex))
   (cliente (nombre maria) (tipo menudista) (tarjeta bbva))
   (order (Cliente juan) (producto iPhone16) (qty 30) (metodo-pago banamex))
   (order (Cliente maria) (producto macbookpro) (qty 1) (metodo-pago bbva)))




