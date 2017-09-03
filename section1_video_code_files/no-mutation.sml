fun append (xs : int list, ys : int list) =
    if null xs
    then ys
    else hd(xs) :: append(tl(xs),ys)
val x = [2,4]
val y = [5,3,0]
val z = append(x,y)
