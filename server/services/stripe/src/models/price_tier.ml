(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Price for the entire tier. *)
    flat_amount: int32 option [@default None];
    (* Same as `flat_amount`, but contains a decimal value with at most 12 decimal places. *)
    flat_amount_decimal: string option [@default None];
    (* Per unit price for units relevant to the tier. *)
    unit_amount: int32 option [@default None];
    (* Same as `unit_amount`, but contains a decimal value with at most 12 decimal places. *)
    unit_amount_decimal: string option [@default None];
    (* Up to and including to this quantity will be contained in the tier. *)
    up_to: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    flat_amount = None;
    flat_amount_decimal = None;
    unit_amount = None;
    unit_amount_decimal = None;
    up_to = None;
}
