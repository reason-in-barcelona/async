(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    client_id: string;
    name: string;
    url: string;
} [@@deriving yojson { strict = false }, show ];;

let create (client_id : string) (name : string) (url : string) : t = {
    client_id = client_id;
    name = name;
    url = url;
}

