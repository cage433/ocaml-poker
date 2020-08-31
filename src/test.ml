open OUnit2
open Owl

let x = Arr.init [|6;8|] (fun i -> (float_of_int i))
let empty_list = []

let test_empty _ = 
  assert_equal 0 (List.length empty_list)


let suite = 
  "First Suite" >::: [
    "test_empty" >:: test_empty
  ]

let () =
  run_test_tt_main suite

