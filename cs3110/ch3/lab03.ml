open List

let product lst = 
    let rec aux accum l = match l with 
    | [] -> accum
    | h::t -> aux (accum * h) t
    in
    aux 1 lst

let concat lst = 
    let rec aux accum l = match l with
    | [] -> accum
    | h::t -> aux (accum ^ h) t
    in 
    aux "" lst

let match_bigred lst = match lst with 
    | [] -> false
    | "bigred"::_ -> true
    | _::t -> false

let rec two_or_four lst = match lst with
    | [] -> false
    | f::s::[] -> true
    | f::s::n::m::[] -> true
    | h::t -> false 

let first_are_dups lst = match lst with
    | [] -> false
    | h::s::t -> if h = s then true else false 
    | h::t -> false

let fifth (l :int list) = 
    if List.length l < 5 then 0
    else List.nth l 4

let last l = 
    List.nth l ((List.length l ) - 1)

let any_zeroes l = 
    let is_zero x = if x = 0 then true else false
    in 
    List.exists (is_zero) l

let rec take n l = 
  if n > 0 then
    match l with
    | [] -> []
    | h::t -> h :: (take (n-1) t) 
  else 
      []

let take' n l = 
    let rec aux accum m lst = 
        if m > 0 then 
            match lst with
            | [] -> List.rev accum
            | h::t -> aux (h::accum) (m-1) t
        else 
            List.rev accum
    in aux [] n l
let rec drop n l =
    if n = 0 then l
    else drop (n-1) (match l with 
    | [] -> []
    | h::t -> t)

let rec powerset s = match s with
| [] -> [[]]
| h::t -> let ps = powerset t in
    ps @ List.map (fun ss -> h :: ss) ps

let safe_hd lst = match lst with
| [] -> None
| h::t -> Some h
