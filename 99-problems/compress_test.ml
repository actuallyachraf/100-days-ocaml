open OUnit2
open Compress 

let tests = "test for rev function" >::: [
    "empty" >:: (fun _ -> assert_equal [] (compress []));
    "full" >:: (fun _ -> assert_equal [1;2;3;4;3;5] (compress [1;1;2;2;3;4;3;3;5;5]));
]

let _ = run_test_tt_main tests
