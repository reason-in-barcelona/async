(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99). *)
    amount: int32 option [@default None];
    (* The account (if any) the payment will be attributed to for tax reporting, and where funds from the payment will be transferred to upon payment success. *)
    destination: Any_ofstringaccount.t;
} [@@deriving yojson { strict = false }, show ];;

let create (destination : Any_ofstringaccount.t) : t = {
    amount = None;
    destination = destination;
}

