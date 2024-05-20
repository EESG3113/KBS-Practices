(defrule flu
  (and (fever yes)
    (chills yes)
  )
  =>
  (printout t "Posible diagnóstico: Gripe" crlf)
)

(defrule pneumonia
  (and (fever yes)
    (chest-pain yes)
  )
  =>
  (printout t "Posible diagnóstico: Neumonía" crlf)
)

(defrule diabetes
  (and (excessive-thirst yes)
    (frequent-urination yes)
  )
  =>
  (printout t "Posible diagnóstico: Diabetes" crlf)
)

(defrule hypertension
  (and (headache yes)
    (dizziness yes)
  )
  =>
  (printout t "Posible diagnóstico: Hipertensión" crlf)
)

(defrule asthma
  (and (wheezing yes)
    (shortness-of-breath yes)
  )
  =>
  (printout t "Posible diagnóstico: Asma" crlf)
)

(defrule arthritis
  (and (joint-pain yes)
    (swelling yes)
  )
  =>
  (printout t "Posible diagnóstico: Asma" crlf)
)

(defrule nothing
  =>
  (printout t "NOTA: Si no se ha impreso nada, o múltiples diagnósticos, significa que no hemos podido detectar la enfermedad que presenta." crlf)
)