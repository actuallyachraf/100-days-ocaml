open OUnit2
open Lab03 

let tests = "test suites for lab 03" >::: [

    "product" >:: (fun _ -> assert_equal 120 (product [1;2;3;4;5]));
    "concat" >::  (fun _ -> assert_equal "SatoshiNakamoto" (concat ["Satoshi";"Nakamoto"]));
    "two or four" >:: (fun _ -> assert_equal true (two_or_four [1;2]));
    "two or four edgecase" >:: (fun _ -> assert_equal false (two_or_four [1;2;3]));

    "two or four edgecase2" >:: (fun _ -> assert_equal false (two_or_four [1;2;3;4;5]));

    "two or four edgecase3" >:: (fun _ -> assert_equal true (two_or_four [1;2;3;4]));

    "two or four edgecase4" >:: (fun _ -> assert_equal false (two_or_four []));
    "first are dup" >:: (fun _ -> assert_equal false (first_are_dups [1;2;3]));
    "first are dup" >:: (fun _ -> assert_equal true (first_are_dups [1;1;3]));
    "fifth element" >:: (fun _ -> assert_equal 7 (fifth [1;1;3;5;7]));
    "last element" >:: (fun _ -> assert_equal 9 (last [1;1;3;5;7;8;9]));
"any zeroes" >:: (fun _ -> assert_equal true (any_zeroes [1;4;3;5;0;8;9])); 
"take" >:: (fun _ -> assert_equal [1;4;3;5] (take 4 [1;4;3;5;0;8;9]));
"drop" >:: (fun _ -> assert_equal [0;8;9] (drop 4 [1;4;3;5;0;8;9]));
"take tail recursive" >:: (fun _ -> assert_equal [1;4;3;5] (take' 4 [1;4;3;5;0;8;9]));
"powerset" >:: (fun _ -> assert_equal [[]; [3]; [2]; [2; 3]; [1]; [1; 3]; [1; 2]; [1; 2; 3]]
  (powerset [1;2;3]));
"take" >:: (fun _ -> assert_equal (Some 1) (safe_hd [1;4;3;5;0;8;9]));









]

let _ = run_test_tt_main tests

