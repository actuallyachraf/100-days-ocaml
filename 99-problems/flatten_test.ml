open OUnit2
open Flatten

let tests = "test for flatten function" >::: [
    "empty" >:: (fun _ -> assert_equal [] (flatten []));
    "full" >:: (fun _ -> assert_equal [1;2;3;4;5] (flatten [One 1;Many [ One 2; One 3;Many[One 4; One 5]]]));

]
let _ = run_test_tt_main tests
