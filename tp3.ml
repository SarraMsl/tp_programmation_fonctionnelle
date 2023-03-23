(* Ex 01 *)
let rec pgcd x y = if y = 0 then x else let j = x mod y in pgcd y j ;;
pgcd 60 36;;

(* Ex 02 *)
let rec fact x = if x = 1 then 1 else fact(x - 1) * x;;
let rec com p n = if p = n then 1 else if p = 1 then n else com (p-1) (n-1) + com p (n-1);;
let rec com p n = if p = n then 1 else if p = 1 then n else (fact n) / ((fact p) * (fact (n - p)));;
com 2 3;;

(* Ex 03 *)
let l1 = [];;
['D'] @ l1;;
let l1 = ['A'; 'B'; 'C'; 'D'] @ l1;;
let l2 = ['E'; 'F'; 'G'];;
let l1 = l1 @ l2;;

List.hd(l1);;
List.tl(l1);;
List.nth l1 2;;
List.length(l1);

let a1 = Array.of_list(l1);;
a1.(1);;

(* Ex 04 *)
let rec sum l = match l with | [] -> 0 | h :: t -> h + (sum t);;

(* let rec sum1 l = if l = [] then 0 else let h = List.hd(l1) and t = List.tl(l1) in h + sum t;; *)

(* Ex 05 *)
let rec spe l = match l with | [] -> "" | h :: t -> h ^ ", " ^ (spe t);;

