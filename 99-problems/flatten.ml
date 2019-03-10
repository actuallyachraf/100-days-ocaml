open List

type 'a node = 
    | One of 'a
    | Many of 'a node list

let flatten lst = 
    let rec aux accum = function 
        | [] -> accum
        | One x::t -> aux (x :: accum) t
        | Many l::t -> aux (aux accum l) t in
    List.rev (aux [] lst)

