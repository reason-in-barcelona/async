(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* apps parameter *)
    apps: string list;
} [@@deriving yojson { strict = false }, show ];;

let create (apps : string list) : t = {
    apps = apps;
}

