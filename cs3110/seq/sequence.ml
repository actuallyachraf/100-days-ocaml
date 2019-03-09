(* Mylist implements sequence ADT*)

type 'a mylist = 
    Empty
    | Cons of 'a * 'a mylist

type 'a sequence = 'a mylist

let empty = Empty

let is_empty = function
    | Empty -> true
    | _ -> false

let extend = fun e l -> Cons (e,l)

let first = function
    | Empty -> None
    | Cons (e,_) -> Some e

let rest = function
    | Empty -> None
    | Cons (_,l) -> Some l

let rec index n = function
    | Empty -> None
    | Cons (e,_) when n = 0 -> Some e
    | Cons (_,tl) when n > 0 -> index (n-1) tl
    | _ -> None

    
