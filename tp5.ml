exception List_vide ;;

let premi x= match x with 
[]->raise(List_vide)
|h::t->hd ;;
(*# premi[1;2;5];;
- : int = 1*)
let afficher x =
  try
    print_int(premi x)
    with
    |List_vide -> print_string"la list vid";;
    
