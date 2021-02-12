(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The amount, in %s, of the tax. *)
    amount: int32;
    (* Whether this tax amount is inclusive or exclusive. *)
    inclusive: bool;
    (* The tax rate that was applied to get this tax amount. *)
    tax_rate: Any_ofstringtax_rate.t;
} [@@deriving yojson { strict = false }, show ];;

let create (amount : int32) (inclusive : bool) (tax_rate : Any_ofstringtax_rate.t) : t = {
    amount = amount;
    inclusive = inclusive;
    tax_rate = tax_rate;
}
