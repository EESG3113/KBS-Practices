
;; 4th  type the following function in Jess command prompt for displaying current stored facts 
;; in Jess working mem...  

;;(load run.clp)
;;(run)

;; 3rd  type the following function in Jess command prompt for loading rules...   

(defrule cargar-rules
  =>
  ;;(printout t "Aqui termina" crlf)
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/market/rules.clp")
  (assert (pausa-market "1"))
)


;; 2nd  type the following function in Jess command prompt for loading facts into Jess Working Memory  

(defrule cargar-facts
  =>
  ;;(printout t "Aqui es en medio" crlf)
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/market/facts.clp")
)


;; 1st  type the following function in Jess command prompt for loading data templates  

(defrule cargar-templates
  =>
  ;;(printout t "Aqui empieza" crlf)
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/market/templates.clp")
)