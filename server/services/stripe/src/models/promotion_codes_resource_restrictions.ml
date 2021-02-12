(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices *)
    first_time_transaction: bool;
    (* Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work). *)
    minimum_amount: int32 option [@default None];
    (* Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount *)
    minimum_amount_currency: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (first_time_transaction : bool) : t = {
    first_time_transaction = first_time_transaction;
    minimum_amount = None;
    minimum_amount_currency = None;
}

