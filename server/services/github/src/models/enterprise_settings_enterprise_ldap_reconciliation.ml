(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    user: string option [@default None];
    org: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    user = None;
    org = None;
}

