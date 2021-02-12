(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Credit_note.t : Issue a credit note to adjust an invoice's amount after the invoice is finalized.  Related guide: [Credit Notes](https://stripe.com/docs/billing/invoices/credit-notes).
 *)

type t = {
    (* The integer amount in %s representing the total amount of the credit note, including tax. *)
    amount: int32;
    (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
    created: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* ID of the customer. *)
    customer: Any_ofstringcustomerdeleted_customer.t;
    (* Customer balance transaction related to this credit note. *)
    customer_balance_transaction: Any_ofstringcustomer_balance_transaction.t option [@default None];
    (* The integer amount in %s representing the total amount of discount that was credited. *)
    discount_amount: int32;
    (* The aggregate amounts calculated per discount for all line items. *)
    discount_amounts: Discounts_resource_discount_amount.t list;
    (* Unique identifier for the object. *)
    id: string;
    (* ID of the invoice. *)
    invoice: Any_ofstringinvoice.t;
    lines: Credit_note_lines_list_1.t;
    (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
    livemode: bool;
    (* Customer-facing text that appears on the credit note PDF. *)
    memo: string option [@default None];
    (* Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. *)
    metadata: (string * string) list;
    (* A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice. *)
    number: string;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.credit_note_object[@default `Credit_note];
    (* Amount that was credited outside of Stripe. *)
    out_of_band_amount: int32 option [@default None];
    (* The link to download the PDF of the credit note. *)
    pdf: string;
    (* Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory` *)
    reason: Enums.reason option [@default None];
    (* Refund related to this credit note. *)
    refund: Any_ofstringrefund.t option [@default None];
    (* Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding). *)
    status: Enums.credit_note_status;
    (* The integer amount in %s representing the amount of the credit note, excluding tax and invoice level discounts. *)
    subtotal: int32;
    (* The aggregate amounts calculated per tax rate for all line items. *)
    tax_amounts: Credit_note_tax_amount.t list;
    (* The integer amount in %s representing the total amount of the credit note, including tax and all discount. *)
    total: int32;
    (* Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid. *)
    _type: Enums.credit_note_type;
    (* The time that the credit note was voided. *)
    voided_at: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Issue a credit note to adjust an invoice's amount after the invoice is finalized.  Related guide: [Credit Notes](https://stripe.com/docs/billing/invoices/credit-notes). *)
let create (amount : int32) (created : int32) (currency : string) (customer : Any_ofstringcustomerdeleted_customer.t) (discount_amount : int32) (discount_amounts : Discounts_resource_discount_amount.t list) (id : string) (invoice : Any_ofstringinvoice.t) (lines : Credit_note_lines_list_1.t) (livemode : bool) (number : string) (_object : Enums.credit_note_object) (pdf : string) (status : Enums.credit_note_status) (subtotal : int32) (tax_amounts : Credit_note_tax_amount.t list) (total : int32) (_type : Enums.credit_note_type) : t = {
    amount = amount;
    created = created;
    currency = currency;
    customer = customer;
    customer_balance_transaction = None;
    discount_amount = discount_amount;
    discount_amounts = discount_amounts;
    id = id;
    invoice = invoice;
    lines = lines;
    livemode = livemode;
    memo = None;
    metadata = [];
    number = number;
    _object = _object;
    out_of_band_amount = None;
    pdf = pdf;
    reason = None;
    refund = None;
    status = status;
    subtotal = subtotal;
    tax_amounts = tax_amounts;
    total = total;
    _type = _type;
    voided_at = None;
}

