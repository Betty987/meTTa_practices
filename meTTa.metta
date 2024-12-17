
;append element
(= (append $list1 $element) (
    if (== $list1 ()) 
        $element 
    ($list1 $element)
))
;remove element
(= (remove () $symbol) ())
(= (remove $list $symbol)(
    if(== (car-atom $list) $symbol)
    (cdr-atom $list)
    ((car-atom $list)(remove (cdr-atom $list) $symbol))
)
)

;max-value
(= (find-max ($x)) $x)


(= (find-max $list)
   (let (($head (car-atom $list))   
         ($tail (cdr-atom $list)))  
     (if (> $head (find-max $tail)) 
         $head
         (find-max $tail))))     

;min-value
(= (find-min ($x)) $x)
(= (find-min $list)
   (let (($head (car-atom $list))   
         ($tail (cdr-atom $list))) 
     (if (< $head (find-min $tail))
         $head
        (find-min $tail))))   
