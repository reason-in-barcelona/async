(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The end of this phase of the subscription schedule. *)
    end_date: int32;
    (* The start of this phase of the subscription schedule. *)
    start_date: int32;
} [@@deriving yojson { strict = false }, show ];;

let create (end_date : int32) (start_date : int32) : t = {
    end_date = end_date;
    start_date = start_date;
}

