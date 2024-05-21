; Cargar productos
(load "products/templates.clp")
(load "products/facts.clp")

; Cargar mercado
(load "market/templates.clp")
(load "market/facts.clp")
(load "market/rules.clp")

; Cargar clientes
(load "clients/templates.clp")
(load "clients/facts.clp")

; Inicializar el entorno
(reset)

; Ejecutar el motor de inferencia
(run)
