(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The state that the membership should be in. Only `\''active\''` will be accepted. *)
    state: Enums.inline_object_169_state[@default `Active];
} [@@deriving yojson { strict = false }, show ];;

let create (state : Enums.inline_object_169_state) : t = {
    state = state;
}

