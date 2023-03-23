(*exo 1 *)

exception List_vid;;


let premierElement x=match x with 
|[]-> raise(List_vid )
|h::t->h;;
let afficherPremierElement x = try print_int(premierElement x)  with |List_vid->print_string"list it vide";; 


(Exo 2)
exception Negatif;;

let rec fac x= if x<0 then raise(Negatif) 
else
match x with
|0|1->1
|x->x*(fac(x-1));;

let afficheFactPremierElement x =try print_int( fac( premierElement  x) )with |Negatif->print_string"Negatif";;


afficheFactPremierElement [5; -3; 6];;

afficheFactPremierElement [-5; -3; 6];;

afficheFactPremierElement [];;