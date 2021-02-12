(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The organization's username. *)
    login: string;
    (* The login of the user who will manage this organization. *)
    admin: string;
    (* The organization's display name. *)
    profile_name: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (login : string) (admin : string) : t = {
    login = login;
    admin = admin;
    profile_name = None;
}

