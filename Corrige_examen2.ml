
type adresse ={ cite  : string; rue : string; ville : string};;
type sexe = Feminin | Masculin ;;
type prix = float;;

type client = { nom: string; lieu_hebergement: adresse; genre: sexe; mutable prix_achats: prix list };;


let c1 = { nom = "Ahmed"; lieu_hebergement = {cite= "cite 1"; rue= "rue 1"; ville= "Tiaret"}; genre= Masculin; prix_achats=[100.; 120.; 90.5]};;
let c2 = { nom = "Fatima"; lieu_hebergement = {cite= "cite 2"; rue= "rue 2"; ville= "Tiaret"}; genre= Feminin; prix_achats=[160.5; 100.; 80.]};;




let rec moins_dix l: float list  =
  match l with
  | [] -> []
  | hd :: tl -> (hd -. 10.) :: (moins_dix tl) ;;


c1.prix_achats <- moins_dix c1.prix_achats;;
c2.prix_achats <- moins_dix c2.prix_achats;;


c1.prix_achats;;
c2.prix_achats;;


exception ListeVide;;

let moyenne_prix lst =
  match lst with
  | [] -> raise ListeVide
  | hd :: tl -> List.fold_left ( +. ) 0. lst /. float_of_int (List.length lst);;


moyenne_prix c1.prix_achats;;
moyenne_prix c2.prix_achats;;