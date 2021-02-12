(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Validation_error.t : Validation Error
 *)

type t = {
    message: string;
    documentation_url: string;
    errors: Validation_error_errors.t list;
} [@@deriving yojson { strict = false }, show ];;

(** Validation Error *)
let create (message : string) (documentation_url : string) : t = {
    message = message;
    documentation_url = documentation_url;
    errors = [];
}

