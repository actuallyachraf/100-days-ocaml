open OUnit2
open Sum

let tests = "test suite for sum function" >::: [

    "empty" >:: (fun _ -> assert_equal 0 (sum []));
    "one" >:: (fun _ -> assert_equal 1 (sum [1]));
    "nine" >:: (fun _ -> assert_equal 55 (sum [1;2;3;4;5;6;7;8;9;10]))
]

let _ = run_test_tt_main tests
