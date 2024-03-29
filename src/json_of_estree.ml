module Hh_json_translator : (
  Translator_intf.S with type t = Hh_json.json
) = struct
  type t = Hh_json.json

  open Hh_json

  let string x = JSON_String x
  let bool x = JSON_Bool x
  let obj props = JSON_Object props
  let array arr = JSON_Array arr
  let number x = JSON_Number (Dtoa.ecma_string_of_float x)
  let null = JSON_Null
  let regexp _loc _pattern _flags = JSON_Null
end

include Hh_json_translator