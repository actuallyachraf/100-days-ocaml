open OUnit2
open Rle 

let tests = "test for rev function" >::: [
    "empty" >:: (fun _ -> assert_equal [] (rle []));
    "full" >:: (fun _ -> assert_equal  [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")] (rle ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"]));

]

let _ = run_test_tt_main tests
