(* Ex 01 *)
  let print_departem num_dep = match num_dep with 
  |1 -> "Informatique" 
  | 19 -> "Mathematique" 
  | 38 -> "Electronique" 
  | _ -> "NO";;
  print_departem 19;;
  (* Ex 02 *)
  let print_num_wilaya num_w = match num_w with 
  |13|27|29|22|46 -> "Region Ouest" 
  |25|21|40|41|24 -> "Region Est" 
  |1|37|33|47|30 -> "Sud Algerien" 
  |_ -> "no num";;
  print_num_wilaya 21;;
  
  (* Ex 03 *)
  
  let l = [1; 2; 3; 4; 5];;
  
  
  let hd = List.hd(l);;
  let tl = List.tl(l);;
  
  hd :: tl;;
  hd :: tl = l;;
  [] = l;;
  
  (* Ex 04 *)
  let rec longer_list l = match l with |[] -> 0 | h::t -> (longer_list t) + 1;;
  longer_list l;;
  
  let rec som_list l = match l with |[] -> 0 | h::t -> (som_list t) + h;;
  som_list l;;
  
  let rec mul_list l = match l with |[] -> 1 | h::t -> (mul_list t) * h;;
  mul_list l;;

(*EX5*)

List.map int_of_char ['a';'b';'c'];;
List.map(fun x->x*.2.0)[2.;7.;1.];; 
let pair x = (x mod 2)=0;;
List.filter pair [1 ; 2 ; 3 ; 10 ; 11 ; 19 ; 38];;
List.fold_left(+)0 [1;2;3];;
