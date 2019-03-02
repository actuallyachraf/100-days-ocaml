open OUnit2
open Len

let tests = "test for len function" >::: [
    "empty" >:: (fun _ -> assert_equal 0 (len []));
    "full" >:: (fun _ -> assert_equal (5) (len [1;2;3;4;5]));
    "full2" >:: (fun _ -> assert_equal (7) (length [1;2;3;4;5;6;7]));
]

let _ = run_test_tt_main tests
