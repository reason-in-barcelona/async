(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* teams parameter *)
    teams: string list;
} [@@deriving yojson { strict = false }, show ];;

let create (teams : string list) : t = {
    teams = teams;
}
