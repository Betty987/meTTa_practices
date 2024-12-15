;remove element
(= (remove () $symbol) () )
(= (remove $list $symbol)(
    if(== (car-atom $list) $symbol)(remove (cdr-atom $list) $symbol)
    ((car-atom $list)(remove (cdr-atom $list) $symbol))
)
)
!(remove (a b c) b)

;append element
(= (append () $symbol) [$symbol] )
(= (append $list $symbol)(
    (+ (car-atom $list)(append (cdr-atom $list) $symbol))
)
)
;!(append (a b c) d)

;max-value

;min-value
