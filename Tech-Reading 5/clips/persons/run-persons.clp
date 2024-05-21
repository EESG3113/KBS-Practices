

;; Loading person's template and facts to Jess Working Memory

(defrule cargar-personas
  =>
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/persons/load-persons.clp")
)

;; Loading person rules ...

(defrule cargar-personas-reglas
  =>
  (load "D:/USUARIO/Documents/UdeG/Sistemas basados en conocimientos (KBS)/agent-repo-main/clips/persons/load-persons-rules.clp")
  (assert (pausar-persons "1"))
)

(defrule reinicia-persons
  (pausar-persons ?p)
  =>
  (reset)
)

;; Displaying Jess Working Memory contents (known facts)

(defrule mostrar-facts
  =>
  (printout t "Current stored facts in CLIPS Working Memory:" crlf)
  (facts)
)


;; Calling run function (Jess inference engine) to query the Working Memory via the rules in load-rules.clp
;; and find out which rules fire ... displaying data

;;(run)


;;Erase all Facts and Rules

(defrule limpiar-personas
  =>
  (clear)
)
