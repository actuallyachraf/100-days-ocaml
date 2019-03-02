let rec at idx lst = match lst with
| [] -> None
| h::t -> if idx = 0 then Some h else at (idx-1) t
