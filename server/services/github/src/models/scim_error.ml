(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Scim_error.t : Scim Error
 *)

type t = {
    message: string option [@default None];
    documentation_url: string option [@default None];
    detail: string option [@default None];
    status: int32 option [@default None];
    scim_type: string option [@default None];
    schemas: string list;
} [@@deriving yojson { strict = false }, show ];;

(** Scim Error *)
let create () : t = {
    message = None;
    documentation_url = None;
    detail = None;
    status = None;
    scim_type = None;
    schemas = [];
}

