open OUnit2
open Last 

let tests = "test for last function" >::: [
    "empty" >:: (fun _ -> assert_equal None (last []));
    "numbers" >:: (fun _ -> assert_equal (Some 5) (last [1;2;3;4;5]));
    "strings" >:: (fun _ -> assert_equal (Some "Josephine") (last ["Edward";"Daniel";"Eren";"Josephine"]));
   (* "broken" >:: (fun _ -> assert_equal None (last [1;2;3;4])) *)
]

let _ = run_test_tt_main tests
