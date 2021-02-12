(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Bank code of bank associated with the bank account. *)
    bank_code: string option [@default None];
    (* Branch code of bank associated with the bank account. *)
    branch_code: string option [@default None];
    (* Two-letter ISO code representing the country the bank account is located in. *)
    country: string option [@default None];
    (* Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same. *)
    fingerprint: string option [@default None];
    (* Last four characters of the IBAN. *)
    last4: string option [@default None];
    (* ID of the mandate used to make this payment. *)
    mandate: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    bank_code = None;
    branch_code = None;
    country = None;
    fingerprint = None;
    last4 = None;
    mandate = None;
}

