type card = {rank:int; suit: int}
open Batteries
let ranks = [| 0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12|]

let suits = [| 0; 1; 2; 3|]
let standard_pack = Array.concat (
  List.map (fun rank -> Array.map (fun suit -> {rank; suit}) suits) 
           (Array.to_list ranks))


let shuffled_deck _ = BatRandom.shuffle (BatArray.enum standard_pack)
