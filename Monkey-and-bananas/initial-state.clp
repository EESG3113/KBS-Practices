(deftemplate being
    (slot state)
    (slot subject)
)

(deftemplate isOn
    (slot subject)
    (slot location)
)

(deftemplate has
    (slot subject1)
    (slot subject2)
)

(deftemplate isNear
    (slot subject1)
    (slot subject2)
)

(deftemplate step
    (slot desc)
)


(deffacts start
    (being (state hungry) (subject monkey))
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject banana) (location ceiling))
    (isOn (subject monkey) (location floor))
    (being (state unpeeled) (subject banana))
)
