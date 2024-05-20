(defrule query-disease "Mostrar todos los elementos"
                (disease (name ?n) (signs $?sig) (symptoms $?sym))
                =>
                (printout t "[+] Disease: " ?n crlf "  -- Signs: " ?sig crlf "  -- Symptoms: " ?sym crlf)
        )