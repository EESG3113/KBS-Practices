
;;Loading products and customer templates and facts to Jess Working Memory

(defrule cargar-productos-clientes
  =>
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/prodcust/load-prod-cust.clp")
  (assert (pausar-products "1"))
)

(defrule reinicia-products
  (pausar-products ?p)
  =>
  (reset)
)

;;Loading products and customer rules 

(defrule cargar-productos-clientes-reglas
  =>
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/prodcust/load-prodcust-rules.clp")
)

;;Displaying Jess Working Memory known facts (contents) about products and customers

(defrule mostrar-facts-tienda
  =>
  (printout t "Current stored facts in CLIPS Working Memory:" crlf)
  (facts)
)

;; Call run function (Jess inference engine) to query the Jess Working Memory
;; and find out which rules fire ... displaying data

;;(run)

;; Call clear function to erase all Facts and Rules

(defrule limpiar-productos
  =>
  (clear)
)

