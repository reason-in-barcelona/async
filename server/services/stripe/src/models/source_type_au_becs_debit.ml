(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    bsb_number: string option [@default None];
    fingerprint: string option [@default None];
    last4: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    bsb_number = None;
    fingerprint = None;
    last4 = None;
}

