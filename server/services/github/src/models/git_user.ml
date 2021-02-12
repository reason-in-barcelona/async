(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Git_user.t : Metaproperties for Git author/committer information.
 *)

type t = {
    name: string option [@default None];
    email: string option [@default None];
    date: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Metaproperties for Git author/committer information. *)
let create () : t = {
    name = None;
    email = None;
    date = None;
}

