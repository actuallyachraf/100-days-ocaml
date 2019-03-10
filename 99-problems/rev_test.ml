open OUnit2
open Rev

let tests = "test for rev function" >::: [
    "empty" >:: (fun _ -> assert_equal [] (rev []));
    "full" >:: (fun _ -> assert_equal [5;4;3;2;1] (rev [1;2;3;4;5]));
    "palindrome" >:: (fun _ -> assert_equal true (is_palindrome [1;2;2;1]));    
    "not palindrome" >:: (fun _ -> assert_equal false (is_palindrome [1;2;2;3])); 
]

let _ = run_test_tt_main tests
