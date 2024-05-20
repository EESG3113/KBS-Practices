(defrule delete-disease "Borrar enfermedad"
	=>
	(printout t crlf "[*] Ingrese ID de enfermedad a borrar: ")
	(bind ?d (read))
	(retract ?d)
	(println t crlf "[+] Enfermedad con fact (" ?d ") eliminada con éxito")
)

(defrule show-disease "Mostrar enfermedades"
	?dis <- (disease (name ?n))
	=>
	(bind ?ind (fact-index ?dis))
	(printout t "[" ?ind "] " ?n crlf)
)