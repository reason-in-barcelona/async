(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    read: bool option [@default None];
    write: bool option [@default None];
    admin: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    read = None;
    write = None;
    admin = None;
}

