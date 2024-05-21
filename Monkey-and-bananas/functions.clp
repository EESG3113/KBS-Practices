
(defrule mono-va-al-escritorio
    (being (state lifted)(subject chair))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor))
    (has (subject1 monkey)(subject2 chair))
    (isNear (subject1 desk)(subject2 banana))
    =>
    (assert (isNear (subject1 monkey)(subject2 desk)))
    (assert (step (desc mono-va-al-escritorio)))
)

(defrule mono-pone-silla-en-escritorio  
    (being (state lifted)(subject chair))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor))
    (isNear (subject1 monkey)(subject2 desk))
    (has (subject1 monkey)(subject2 chair))
    (isNear (subject1 desk)(subject2 banana))
    ?blc <- (being (state lifted)(subject chair))
    ?hmc <- (has (subject1 monkey)(subject2 chair))
    =>
    (retract ?blc)
    (retract ?hmc)
    (assert (isOn (subject chair) (location desk)))
    (assert (step (desc mono-pone-silla-en-escritorio)))
)

(defrule mono-trepa-escritorio
    (isOn (subject desk) (location floor))
    (isOn (subject chair) (location desk))
    (isOn (subject monkey) (location floor))
    (isNear (subject1 desk)(subject2 banana))
    (not (has (subject1 monkey)(subject2 chair)))
    ?omf <- (isOn (subject monkey) (location floor))
    =>
    (retract ?omf)
    (assert (isOn (subject monkey) (location desk)))
    (assert (step (desc mono-trepa-escritorio)))
)

(defrule mono-trepa-silla
    (isOn (subject desk) (location floor))
    (isOn (subject chair) (location desk))
    (isOn (subject monkey) (location desk))
    (isNear (subject1 desk)(subject2 banana))
    ?omd <- (isOn (subject monkey) (location desk))
    =>
    (retract ?omd)
    (assert (isOn (subject monkey) (location chair)))
    (assert (step (desc mono-trepa-silla)))
)

(defrule mono-toma-bananas  
    (isOn (subject desk) (location floor))
    (isOn (subject chair) (location desk))
    (isOn (subject monkey) (location chair))
    (isOn (subject banana) (location ceiling))
    (isNear (subject1 desk)(subject2 banana))
    ?obc <- (isOn (subject banana) (location ceiling))
    =>
    (assert (being (state grabed)(subject banana)))
    (assert (has (subject1 monkey)(subject2 banana)))
    (assert (step (desc mono-toma-bananas )))
    (retract ?obc)

)

(defrule mono-pela-bananas
    (being (state grabed)(subject banana))
    (has (subject1 monkey)(subject2 banana))
    (being (state unpeeled) (subject banana))
    (isNear (subject1 desk)(subject2 banana))
    ?bub <- (being (state unpeeled) (subject banana))
    =>
    (retract ?bub)
    (assert (being (state peeled) (subject banana)))
    (assert (step (desc mono-pela-bananas)))
)

(defrule mono-come-bananas
    (has (subject1 monkey)(subject2 banana))
    (being (state peeled) (subject banana))
    (isNear (subject1 desk)(subject2 banana))
    ?bhm <- (being (state hungry) (subject monkey))
    ?bsb <- (being (state peeled) (subject banana))
    ?hmb <- (has (subject1 monkey)(subject2 banana))
    ?ndb <- (isNear (subject1 desk)(subject2 banana))
    ?bgb <- (being (state grabed)(subject banana))
    =>
    (retract ?bhm)
    (assert (being (state happy) (subject monkey)))
    (retract ?bsb)
    (retract ?hmb)
    (retract ?ndb)
    (retract ?bgb)
    (assert (step (desc mono-come-bananas)))
)

(defrule mono-se-acerca-a-escritorio
    (being (state hungry) (subject monkey))
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor)) 
    (isOn (subject banana) (location ceiling))
    =>
    (assert (isNear (subject1 monkey)(subject2 desk)))
    (assert (step (desc mono-se-acerca-a-escritorio)))
)

(defrule mono-toma-escritorio
    (isNear (subject1 monkey)(subject2 desk))
    (not (has (subject1 monkey)(subject2 desk)))
    (not (isNear (subject1 desk) (subject2 banana)))
    (isOn (subject banana) (location ceiling))
    =>
    (assert (has (subject1 monkey)(subject2 desk)))
    (assert (step (desc mono-toma-escritorio)))
)

(defrule mono-mueve-escritorio-bajo-bananas
    (has (subject1 monkey)(subject2 desk))
    (isOn (subject banana) (location ceiling))
    ?hmk <- (has (subject1 monkey)(subject2 desk))
    =>
    (assert (isNear (subject1 desk)(subject2 banana)))
    (retract ?hmk)
    (assert (step (desc mono-mueve-escritorio-bajo-bananas)))
)

(defrule mono-acerca-a-silla
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor)) 
    (isOn (subject banana) (location ceiling))
    (isNear (subject1 desk)(subject2 banana))
    (isNear (subject1 monkey)(subject2 desk))
    ?nmd <- (isNear (subject1 monkey)(subject2 desk))
    => 
    (retract ?nmd)
    (assert (isNear (subject1 monkey)(subject2 chair)))
    (assert (step (desc mono-acerca-a-silla)))
)

(defrule mono-levanta-silla
    (isOn (subject chair) (location floor))
    (isOn (subject desk) (location floor))
    (isOn (subject monkey) (location floor)) 
    (isOn (subject banana) (location ceiling))
    (isNear (subject1 monkey)(subject2 chair))
    ?ocf <- (isOn (subject chair) (location floor))
    =>
    (assert (being (state lifted)(subject chair)))
    (assert (has (subject1 monkey)(subject2 chair)))
    (retract ?ocf)
    (assert (step (desc mono-levanta-silla)))
)

(defrule mostrar-pasos
    (step (desc ?des))
    =>
    (print ?des crlf)
)
