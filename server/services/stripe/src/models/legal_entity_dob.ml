(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The day of birth, between 1 and 31. *)
    day: int32 option [@default None];
    (* The month of birth, between 1 and 12. *)
    month: int32 option [@default None];
    (* The four-digit year of birth. *)
    year: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    day = None;
    month = None;
    year = None;
}

