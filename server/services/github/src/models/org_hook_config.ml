(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    url: string option [@default None];
    insecure_ssl: string option [@default None];
    content_type: string option [@default None];
    secret: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    url = None;
    insecure_ssl = None;
    content_type = None;
    secret = None;
}
