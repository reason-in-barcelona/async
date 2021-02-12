(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same. *)
    fingerprint: string option [@default None];
    (* Transaction ID of this particular Alipay transaction. *)
    transaction_id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    fingerprint = None;
    transaction_id = None;
}

