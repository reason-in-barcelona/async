(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The amount (price) for this order item. *)
    amount: int32 option [@default None];
    (* This currency of this order item. Required when `amount` is present. *)
    currency: string option [@default None];
    (* Human-readable description for this order item. *)
    description: string option [@default None];
    (* The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU). *)
    parent: string option [@default None];
    (* The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered. *)
    quantity: int32 option [@default None];
    (* The type of this order item. Must be `sku`, `tax`, or `shipping`. *)
    _type: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    amount = None;
    currency = None;
    description = None;
    parent = None;
    quantity = None;
    _type = None;
}

