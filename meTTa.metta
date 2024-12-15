;remove element
(= (remove () $symbol) () )
(= (remove $list $symbol)(
    if(== (car-atom $list) $symbol)(remove (cdr-atom $list) $symbol)
    ((car-atom $list)(remove (cdr-atom $list) $symbol))
)
)
!(remove (a b c) b)

;append element
(= (append $list1 $element) (
    if (== $list1 ()) 
        $element  ; If $list1 is empty, return $list2
    ($list1 $element)
))
!(append (a b) (g))

;max-value

;min-value
