(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The project card's note *)
    note: string option [@default None];
    (* Whether or not the card is archived *)
    archived: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    note = None;
    archived = None;
}

