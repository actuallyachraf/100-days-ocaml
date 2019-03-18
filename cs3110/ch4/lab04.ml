let product_left lst = List.fold_left ( *. ) 1. lst

let clip n = 
    if n < 0 then 0
    else if n > 10 then 10
    else n

let cliplist lst = List.map clip lst

let rec cliplist_rec lst = match lst with 
    | [] -> []
    | h::t -> clip h :: ( clip t)


let (--) i j  = 
    let rec from i j l =
        if i>j then l
        else from i (j-1) (j::l) in
  from i j []

let sum_cube_odd n = 
    List.fold_left (+) 0 (List.map ( fun x -> x*x*x) (0--n))

let sum_cube_odd_pipe n = 
    0--n |> List.map (fun x->x*x*x) |> List.fold_left (+) 0

let exists_rec p lst = function
    | [] -> false
    | h::t -> if p h = true then true else exists_rec p t

let exists_lib p lst = List.for_all p lst


