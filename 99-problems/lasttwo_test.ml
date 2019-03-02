open OUnit2
open Lasttwo

let tests = "test for last_two function" >::: [
    "none" >:: (fun _ -> assert_equal None (last_two []));
    "single" >:: (fun _ -> assert_equal None (last_two ['a']));
    "multi" >:: (fun _ -> assert_equal (Some ('a','b')) (last_two ['d';'c';'a';'b']));

]



let _ = run_test_tt_main tests
