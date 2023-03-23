(*ex1*)
type forme = Rectangle | Carre | Cercle;;

type forme =
    | Rectangle of float * float
    | Carre of float
    | Cercle of float;;

    Rectangle (15.5, 20.0) ;;
    Carre 12.3 ;;
    Cercle 10.25 ;;
    
    let surface = function
    | Rectangle (lon, lar) -> lon *. lar
    | Carre cote -> cote *. cote
    | Cercle rayon -> 3.14 *. rayon *. rayon;;

    surface (Cercle 10.);;
    surface (Rectangle (15.,10.));;
    surface (Carre 5.);;

(*ex2*)
type genre = Feminin | Masculin ;;

type client = {numero: int; nom: string; sexe: genre; mutable solde: float};;

let client1 ={numero= 264; nom= "nardjesse"; sexe=Feminin;  solde= 0.0};;
let client2 ={numero= 265; nom= "farouk"; sexe=Masculin;  solde= 176.0};;

client2.solde;;
client1.solde <-200.0;;
client1.solde;;