(*both implementations are tail recursive*)

(*v1 not idiomatic*)
let rec len_h acc lst = match lst with 
| [] -> acc
| h::t -> len_h (acc + 1) t 

let rec len lst =
    len_h 0 lst

(*v2 more idiomatic*)
let length lst =
    let rec aux n = function
        | [] -> n
        | _::t -> aux (n+1) t
    in aux 0 lst
