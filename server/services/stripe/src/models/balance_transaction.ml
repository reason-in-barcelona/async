(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Balance_transaction.t : Balance transactions represent funds moving through your Stripe account. They're created for every type of transaction that comes into or flows out of your Stripe account balance.  Related guide: [Balance Transaction Types](https://stripe.com/docs/reports/balance-transaction-types).
 *)

type t = {
    (* Gross amount of the transaction, in %s. *)
    amount: int32;
    (* The date the transaction's net funds will become available in the Stripe balance. *)
    available_on: int32;
    (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
    created: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* An arbitrary string attached to the object. Often useful for displaying to users. *)
    description: string option [@default None];
    (* The exchange rate used, if applicable, for this transaction. Specifically, if money was converted from currency A to currency B, then the `amount` in currency A, times `exchange_rate`, would be the `amount` in currency B. For example, suppose you charged a customer 10.00 EUR. Then the PaymentIntent's `amount` would be `1000` and `currency` would be `eur`. Suppose this was converted into 12.34 USD in your Stripe account. Then the BalanceTransaction's `amount` would be `1234`, `currency` would be `usd`, and `exchange_rate` would be `1.234`. *)
    exchange_rate: float option [@default None];
    (* Fees (in %s) paid for this transaction. *)
    fee: int32;
    (* Detailed breakdown of fees (in %s) paid for this transaction. *)
    fee_details: Fee.t list;
    (* Unique identifier for the object. *)
    id: string;
    (* Net amount of the transaction, in %s. *)
    net: int32;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.balance_transaction_object[@default `Balance_transaction];
    (* [Learn more](https://stripe.com/docs/reports/reporting-categories) about how reporting categories can help you understand balance transactions from an accounting perspective. *)
    reporting_category: string;
    (* The Stripe object to which this transaction is related. *)
    source: Any_ofstringapplication_feechargeconnect_collection_transferdisputefee_refundissuing_authorizationissuing_disputeissuing_transactionpayoutplatform_tax_feerefundreserve_transactiontax_deducted_at_sourcetopuptransfertransfer_reversal.t option [@default None];
    (* If the transaction's net funds are available in the Stripe balance yet. Either `available` or `pending`. *)
    status: string;
    (* Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `payment`, `payment_failure_refund`, `payment_refund`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. [Learn more](https://stripe.com/docs/reports/balance-transaction-types) about balance transaction types and what they represent. If you are looking to classify transactions for accounting purposes, you might want to consider `reporting_category` instead. *)
    _type: Enums.balance_transaction_type;
} [@@deriving yojson { strict = false }, show ];;

(** Balance transactions represent funds moving through your Stripe account. They're created for every type of transaction that comes into or flows out of your Stripe account balance.  Related guide: [Balance Transaction Types](https://stripe.com/docs/reports/balance-transaction-types). *)
let create (amount : int32) (available_on : int32) (created : int32) (currency : string) (fee : int32) (fee_details : Fee.t list) (id : string) (net : int32) (_object : Enums.balance_transaction_object) (reporting_category : string) (status : string) (_type : Enums.balance_transaction_type) : t = {
    amount = amount;
    available_on = available_on;
    created = created;
    currency = currency;
    description = None;
    exchange_rate = None;
    fee = fee;
    fee_details = fee_details;
    id = id;
    net = net;
    _object = _object;
    reporting_category = reporting_category;
    source = None;
    status = status;
    _type = _type;
}
