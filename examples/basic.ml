open Misc
open Analyse

let exprlatexa = "x_0^{x_1}+x_1^{x_0}";;
let expra = latex_en_expression exprlatexa;; (*parse le latex*)
let exprb = (derive 0 expra);; 				 (*derive l'expression par rapport à x_0*)
let exprbsimpl = snd (simplifiebis exprb);;	 (*simplifie l'expression obtenue*)
let exprlatexb = affiche exprbsimpl;;		 (*transforme l'expression en latex*)

print_string exprlatexb;