(* Sequence ADT*)

type 'a sequence

val empty : 'a sequence
val is_empty : 'a sequence -> bool
val extend : 'a -> 'a sequence -> 'a sequence
val first : 'a sequence -> 'a option
val rest : 'a sequence -> 'a sequence option
val idx : int -> 'a sequence -> 'a option


