(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Charge.t : To charge a credit or a debit card, you create a `Charge` object. You can retrieve and refund individual charges as well as list all charges. Charges are identified by a unique, random ID.  Related guide: [Accept a payment with the Charges API](https://stripe.com/docs/payments/accept-a-payment-charges).
 *)

type t = {
  (* Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99). *)
  amount : int32;
  (* Amount in %s captured (can be less than the amount attribute on the charge if a partial capture was made). *)
  amount_captured : int32;
  (* Amount in %s refunded (can be less than the amount attribute on the charge if a partial refund was issued). *)
  amount_refunded : int32;
  (* ID of the Connect application that created the charge. *)
  application : Any_ofstringapplication.t option; [@default None]
  (* The application fee (if any) for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collecting-fees) for details. *)
  application_fee : Any_ofstringapplication_fee.t option; [@default None]
  (* The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collecting-fees) for details. *)
  application_fee_amount : int32 option; [@default None]
  (* ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes). *)
  balance_transaction : Any_ofstringbalance_transaction.t option;
      [@default None]
  billing_details : Billing_details.t;
  (* The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. *)
  calculated_statement_descriptor : string option; [@default None]
  (* If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured. *)
  captured : bool;
  (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
  created : int32;
  (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
  currency : string;
  (* ID of the customer this charge is for if one exists. *)
  customer : Any_ofstringcustomerdeleted_customer.t option; [@default None]
  (* An arbitrary string attached to the object. Often useful for displaying to users. *)
  description : string option; [@default None]
  (* Whether the charge has been disputed. *)
  disputed : bool;
  (* Error code explaining reason for charge failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes). *)
  failure_code : string option; [@default None]
  (* Message to user further explaining reason for charge failure if available. *)
  failure_message : string option; [@default None]
  (* Information on fraud assessments for the charge. *)
  fraud_details : Any_ofcharge_fraud_details.t option; [@default None]
  (* Unique identifier for the object. *)
  id : string;
  (* ID of the invoice this charge is for if one exists. *)
  invoice : Any_ofstringinvoice.t option; [@default None]
  (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
  livemode : bool;
  (* Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. *)
  metadata : (string * string) list;
  (* String representing the object's type. Objects of the same type share the same value. *)
  _object : Enums.charge_object; [@default `Charge]
  (* The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers) for details. *)
  on_behalf_of : Any_ofstringaccount.t option; [@default None]
  (* ID of the order this charge is for if one exists. *)
  order : Any_ofstringorder.t option; [@default None]
  (* Details about whether the payment was accepted, and why. See [understanding declines](https://stripe.com/docs/declines) for details. *)
  outcome : Any_ofcharge_outcome.t option; [@default None]
  (* `true` if the charge succeeded, or was successfully authorized for later capture. *)
  paid : bool;
  (* ID of the PaymentIntent associated with this charge, if one exists. *)
  payment_intent : Any_ofstringpayment_intent.t option; [@default None]
  (* ID of the payment method used in this charge. *)
  payment_method : string option; [@default None]
  (* Details about the payment method at the time of the transaction. *)
  payment_method_details : Any_ofpayment_method_details.t option;
      [@default None]
  (* This is the email address that the receipt for this charge was sent to. *)
  receipt_email : string option; [@default None]
  (* This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent. *)
  receipt_number : string option; [@default None]
  (* This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt. *)
  receipt_url : string option; [@default None]
  (* Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false. *)
  refunded : bool;
  refunds : Refund_list_1.t;
  (* ID of the review associated with this charge if one exists. *)
  review : Any_ofstringreview.t option; [@default None]
  (* Shipping information for the charge. *)
  shipping : Any_ofshipping.t option; [@default None]
  (* The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details. *)
  source_transfer : Any_ofstringtransfer.t option; [@default None]
  (* For card charges, use `statement_descriptor_suffix` instead. Otherwise, you can use this value as the complete description of a charge on your customers’ statements. Must contain at least one letter, maximum 22 characters. *)
  statement_descriptor : string option; [@default None]
  (* Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor. *)
  statement_descriptor_suffix : string option; [@default None]
  (* The status of the payment is either `succeeded`, `pending`, or `failed`. *)
  status : string;
  (* ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter). *)
  transfer : Any_ofstringtransfer.t option; [@default None]
  (* An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details. *)
  transfer_data : Any_ofcharge_transfer_data.t option; [@default None]
  (* A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details. *)
  transfer_group : string option; [@default None]
}
[@@deriving yojson { strict = false }, show]

(** To charge a credit or a debit card, you create a `Charge` object. You can retrieve and refund individual charges as well as list all charges. Charges are identified by a unique, random ID.  Related guide: [Accept a payment with the Charges API](https://stripe.com/docs/payments/accept-a-payment-charges). *)
let create (amount : int32) (amount_captured : int32) (amount_refunded : int32)
    (billing_details : Billing_details.t) (captured : bool) (created : int32)
    (currency : string) (disputed : bool) (id : string) (livemode : bool)
    (metadata : (string * string) list) (_object : Enums.charge_object)
    (paid : bool) (refunded : bool) (refunds : Refund_list_1.t)
    (status : string) : t =
  {
    amount;
    amount_captured;
    amount_refunded;
    application = None;
    application_fee = None;
    application_fee_amount = None;
    balance_transaction = None;
    billing_details;
    calculated_statement_descriptor = None;
    captured;
    created;
    currency;
    customer = None;
    description = None;
    disputed;
    failure_code = None;
    failure_message = None;
    fraud_details = None;
    id;
    invoice = None;
    livemode;
    metadata;
    _object;
    on_behalf_of = None;
    order = None;
    outcome = None;
    paid;
    payment_intent = None;
    payment_method = None;
    payment_method_details = None;
    receipt_email = None;
    receipt_number = None;
    receipt_url = None;
    refunded;
    refunds;
    review = None;
    shipping = None;
    source_transfer = None;
    statement_descriptor = None;
    statement_descriptor_suffix = None;
    status;
    transfer = None;
    transfer_data = None;
    transfer_group = None;
  }