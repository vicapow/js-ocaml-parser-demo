open Hh_json
module Ast = Flow_ast
module Translate = Estree_translator.Translate (Json_of_estree) (struct
  (* TODO: make these configurable via CLI flags *)
  let include_comments = true
  let include_locs = true
end) ;;

let content = "function foo() { }" in
  let (ast, errors) = Parser_flow.program content in
    if errors <> [] then
      let f error = let (loc, v) = error in print_endline (Parser_flow.Error.PP.error v) in
      List.iter f errors
    else
      let offset_table = Some (Offset_utils.make content) in
      let translated_ast = Translate.program offset_table ast in
      let results = match translated_ast with
        | JSON_Object params ->
            let errors_prop = ("errors", Translate.errors errors) in
            JSON_Object (errors_prop::params)
        | _ -> assert false in
      print_json_endline ~pretty:true results

