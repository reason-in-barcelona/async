(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The Connected account that incurred this charge. *)
    account: string;
    (* Unique identifier for the object. *)
    id: string;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.platform_tax_fee_object[@default `Platform_tax_fee];
    (* The payment object that caused this tax to be inflicted. *)
    source_transaction: string;
    (* The type of tax (VAT). *)
    _type: string;
} [@@deriving yojson { strict = false }, show ];;

let create (account : string) (id : string) (_object : Enums.platform_tax_fee_object) (source_transaction : string) (_type : string) : t = {
    account = account;
    id = id;
    _object = _object;
    source_transaction = source_transaction;
    _type = _type;
}

