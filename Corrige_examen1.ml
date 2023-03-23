
type date ={ jour  : int; mois : int; annee : int};;
type sexe = Feminin | Masculin ;;
type note = float;;

type etudiant = { nom: string; date_naiss: date; genre: sexe; mutable notes: note list };;


let e1 = { nom = "Ahmed"; date_naiss = {jour= 21; mois= 12; annee= 2001}; genre= Masculin; notes=[15.; 12.5; 9.0]};;
let e2 = { nom = "Fatima"; date_naiss = {jour= 22; mois= 12; annee= 2002}; genre= Feminin; notes=[16.; 10.; 8.5]};;



let rec plus_deux l: float list  =
  match l with
  | [] -> []
  | hd :: tl -> (hd +. 2.) :: (plus_deux tl) ;;


e1.notes <- plus_deux e1.notes;;
e2.notes <- plus_deux e2.notes;;


e1.notes;;
e2.notes;;


exception ListeVide;;

let moyenne lst =
  match lst with
  | [] -> raise ListeVide
  | hd :: tl -> List.fold_left ( +. ) 0. lst /. float_of_int (List.length lst);;


moyenne e1.notes;;
moyenne e2.notes;;
