(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order. *)
    amount: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* The email address of the customer placing the order. *)
    email: string option [@default None];
    (* List of items constituting the order. *)
    items: Source_order_item.t list;
    shipping: Shipping.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (amount : int32) (currency : string) : t = {
    amount = amount;
    currency = currency;
    email = None;
    items = [];
    shipping = None;
}

