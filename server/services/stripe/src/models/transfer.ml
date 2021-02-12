(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Transfer.t : A `Transfer` object is created when you move funds between Stripe accounts as part of Connect.  Before April 6, 2017, transfers also represented movement of funds from a Stripe account to a card or bank account. This behavior has since been split out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more information, read about the [transfer/payout split](https://stripe.com/docs/transfer-payout-split).  Related guide: [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/charges-transfers).
 *)

type t = {
    (* Amount in %s to be transferred. *)
    amount: int32;
    (* Amount in %s reversed (can be less than the amount attribute on the transfer if a partial reversal was issued). *)
    amount_reversed: int32;
    (* Balance transaction that describes the impact of this transfer on your account balance. *)
    balance_transaction: Any_ofstringbalance_transaction.t option [@default None];
    (* Time that this record of the transfer was first created. *)
    created: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* An arbitrary string attached to the object. Often useful for displaying to users. *)
    description: string option [@default None];
    (* ID of the Stripe account the transfer was sent to. *)
    destination: Any_ofstringaccount.t option [@default None];
    (* If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer. *)
    destination_payment: Any_ofstringcharge.t option [@default None];
    (* Unique identifier for the object. *)
    id: string;
    (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
    livemode: bool;
    (* Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. *)
    metadata: (string * string) list;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.transfer_object[@default `Transfer];
    reversals: Transfer_reversal_list_1.t;
    (* Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false. *)
    reversed: bool;
    (* ID of the charge or payment that was used to fund the transfer. If null, the transfer was funded from the available balance. *)
    source_transaction: Any_ofstringcharge.t option [@default None];
    (* The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`. *)
    source_type: string option [@default None];
    (* A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details. *)
    transfer_group: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** A `Transfer` object is created when you move funds between Stripe accounts as part of Connect.  Before April 6, 2017, transfers also represented movement of funds from a Stripe account to a card or bank account. This behavior has since been split out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more information, read about the [transfer/payout split](https://stripe.com/docs/transfer-payout-split).  Related guide: [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/charges-transfers). *)
let create (amount : int32) (amount_reversed : int32) (created : int32) (currency : string) (id : string) (livemode : bool) (metadata : (string * string) list) (_object : Enums.transfer_object) (reversals : Transfer_reversal_list_1.t) (reversed : bool) : t = {
    amount = amount;
    amount_reversed = amount_reversed;
    balance_transaction = None;
    created = created;
    currency = currency;
    description = None;
    destination = None;
    destination_payment = None;
    id = id;
    livemode = livemode;
    metadata = metadata;
    _object = _object;
    reversals = reversals;
    reversed = reversed;
    source_transaction = None;
    source_type = None;
    transfer_group = None;
}

