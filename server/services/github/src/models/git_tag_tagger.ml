(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    date: string;
    email: string;
    name: string;
} [@@deriving yojson { strict = false }, show ];;

let create (date : string) (email : string) (name : string) : t = {
    date = date;
    email = email;
    name = name;
}

