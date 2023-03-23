(* Ex 01 *)
let x = 6;;
let y = 7.;;
x * 3;;
y *. 3.;;
1.2 +. 2.;;
x = x + 2;;
let s = "Bonjour";;
let c = '2';;
2 > 7;;
"bonjour" > "bon";;

(* Ex 02 *)
let double x = x * 2;;
double 3;;

let increment y = y + 1;;
increment 4;;

(* EX 03 *)
let a = 7;;
let b = 5 in a * b;;
a;;
b;;

let s = "cou" in s^s;;
s;;

(* Ex 04 *)

let max x y z = if x > y && x > z then x else if y > z then y else z;;
max 3 5 2;;

let fousion x y = x ^ y;;
fousion "Hello, " "world";;

(* Ex 05 *)
let rec fib (n) = if n <= 1 then 1 else fib(n - 1) + fib (n - 2);;
fib 5;;