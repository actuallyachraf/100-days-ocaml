(* Get a hamdle on current dir *)
let all = Sys.readdir ".";;
(* Get extension *)
let dot = '.' 
let arg = Sys.argv.(1) 
let ext = String.make 1 dot ^ arg
(* filter by has suffix .ml*)
let filter p =
    Array.fold_left
    (fun res x -> if p x then x :: res else res) [];;

(* check whether a string has a suffix here filenames*)
let has_suffix suf str =
    let len_suf = String.length suf in
    let len_str = String.length str in
    len_suf <= len_str &&
    String.sub str (len_str - len_suf) len_suf = suf;;

List.iter print_endline (filter (has_suffix ext) all);;
