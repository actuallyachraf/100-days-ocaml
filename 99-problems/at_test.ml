open OUnit2
open At

let tests = "test for at function" >::: [
    "empty" >:: (fun _ -> assert_equal None (at 3 []));
    "first" >:: (fun _ -> assert_equal (Some 1) (at 0 [1;2;3;4;5]));
    "last" >:: (fun _ -> assert_equal (Some "Josephine") (at 3 ["Edward";"Daniel";"Eren";"Josephine"]));
    "middle" >:: (fun _ -> assert_equal (Some 3) (at 3 [0;1;2;3;4;5]));
    "edgecase" >:: (fun _ -> assert_equal (None) (at 5 [1;2;3]));
]

let _ = run_test_tt_main tests
