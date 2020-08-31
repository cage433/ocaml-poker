let rec product l1 l2 = 
  match l1, l2 with
    | [], _ | _, []  -> []
    | h1::t1 , h2::t2 -> (h1, h2)::(product [h1] t2)@(product t1 t2)

let shuffle seed l = 
  BatRandom.init seed;
  let arr = Array.of_list l in 
    for i = 0 to (List.length l - 1) do
      let j = BatRandom.int (i + 1) in 
        let tmp = Array.get arr j in 
          Array.set arr j (Array.get arr i);
          Array.set arr i (tmp)
    done;
    Array.to_list arr

