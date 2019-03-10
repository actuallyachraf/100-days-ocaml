let rec rev lst = match lst with 
| [] -> []
| h::t -> rev t @ [h]

let is_palindrome lst = if lst = rev lst then true else false
