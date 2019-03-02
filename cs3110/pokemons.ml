type ptype = Normal | Fire | Water | Electric


type pokemon = {name:string; hp : int; ptype:ptype}

let string_of_ptype x =
    match x with 
    | Normal -> "Normal"
    | Fire -> "Fire"
    | Water -> "Water"
    | Electric -> "Electric"

let show_pokemon p = 
    print_string p.name;
    print_newline ();
    print_int p.hp;
    print_newline ();
    print_string (string_of_ptype p.ptype);
    print_newline ()
(* Define some Pokemons*)

let charm = {name = "Charmander"; hp = 40 ; ptype = Fire}
let bulb = {name = "Bulbasur" ; hp = 38; ptype = Water}
let pika = {name = "Pikachu" ; hp = 56; ptype = Electric}


let pokemons = [(charm,20);(bulb,18);(pika,17)]

let pokedex = [charm;bulb;pika]

let () = 
    List.iter show_pokemon pokedex;
    print_int (List.assoc charm pokemons)

