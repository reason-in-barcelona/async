(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Invoice.t : Invoices are statements of amounts owed by a customer, and are either generated one-off, or generated periodically from a subscription.  They contain [invoice items](https://stripe.com/docs/api#invoiceitems), and proration adjustments that may be caused by subscription upgrades/downgrades (if necessary).  If your invoice is configured to be billed through automatic charges, Stripe automatically finalizes your invoice and attempts payment. Note that finalizing the invoice, [when automatic](https://stripe.com/docs/billing/invoices/workflow/#auto_advance), does not happen immediately as the invoice is created. Stripe waits until one hour after the last webhook was successfully sent (or the last webhook timed out after failing). If you (and the platforms you may have connected to) have no webhooks configured, Stripe waits one hour after creation to finalize the invoice.  If your invoice is configured to be billed by sending an email, then based on your [email settings](https://dashboard.stripe.com/account/billing/automatic'), Stripe will email the invoice to your customer and await payment. These emails can contain a link to a hosted page to pay the invoice.  Stripe applies any customer credit on the account before determining the amount due for the invoice (i.e., the amount that will be actually charged). If the amount due for the invoice is less than Stripe's [minimum allowed charge per currency](/docs/currencies#minimum-and-maximum-charge-amounts), the invoice is automatically marked paid, and we add the amount due to the customer's running account balance which is applied to the next invoice.  More details on the customer's account balance are [here](https://stripe.com/docs/api/customers/object#customer_object-account_balance).  Related guide: [Send Invoices to Customers](https://stripe.com/docs/billing/invoices/sending).
 *)

type t = {
    (* The country of the business associated with this invoice, most often the business creating the invoice. *)
    account_country: string option [@default None];
    (* The public name of the business associated with this invoice, most often the business creating the invoice. *)
    account_name: string option [@default None];
    (* The account tax IDs associated with the invoice. Only editable when the invoice is a draft. *)
    account_tax_ids: Any_ofstringtax_iddeleted_tax_id.t list;
    (* Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`. *)
    amount_due: int32;
    (* The amount, in %s, that was paid. *)
    amount_paid: int32;
    (* The amount remaining, in %s, that is due. *)
    amount_remaining: int32;
    (* The fee in %s that will be applied to the invoice and transferred to the application owner's Stripe account when the invoice is paid. *)
    application_fee_amount: int32 option [@default None];
    (* Number of payment attempts made for this invoice, from the perspective of the payment retry schedule. Any payment attempt counts as the first attempt, and subsequently only automatic retries increment the attempt count. In other words, manual payment attempts after the first attempt do not affect the retry schedule. *)
    attempt_count: int32;
    (* Whether an attempt has been made to pay the invoice. An invoice is not attempted until 1 hour after the `invoice.created` webhook, for example, so you might not want to display that invoice as unpaid to your users. *)
    attempted: bool;
    (* Controls whether Stripe will perform [automatic collection](https://stripe.com/docs/billing/invoices/workflow/#auto_advance) of the invoice. When `false`, the invoice's state will not automatically advance without an explicit action. *)
    auto_advance: bool option [@default None];
    (* Indicates the reason why the invoice was created. `subscription_cycle` indicates an invoice created by a subscription advancing into a new period. `subscription_create` indicates an invoice created due to creating a subscription. `subscription_update` indicates an invoice created due to updating a subscription. `subscription` is set for all old invoices to indicate either a change to a subscription or a period advancement. `manual` is set for all invoices unrelated to a subscription (for example: created via the invoice editor). The `upcoming` value is reserved for simulated invoices per the upcoming invoice endpoint. `subscription_threshold` indicates an invoice created due to a billing threshold being reached. *)
    billing_reason: Enums.billing_reason option [@default None];
    (* ID of the latest charge generated for this invoice, if any. *)
    charge: Any_ofstringcharge.t option [@default None];
    (* Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. *)
    collection_method: Enums.collection_method option [@default None];
    (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
    created: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* Custom fields displayed on the invoice. *)
    custom_fields: Invoice_setting_custom_field.t list;
    (* The ID of the customer who will be billed. *)
    customer: Any_ofstringcustomerdeleted_customer.t;
    (* The customer's address. Until the invoice is finalized, this field will equal `customer.address`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_address: Any_ofaddress.t option [@default None];
    (* The customer's email. Until the invoice is finalized, this field will equal `customer.email`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_email: string option [@default None];
    (* The customer's name. Until the invoice is finalized, this field will equal `customer.name`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_name: string option [@default None];
    (* The customer's phone number. Until the invoice is finalized, this field will equal `customer.phone`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_phone: string option [@default None];
    (* The customer's shipping information. Until the invoice is finalized, this field will equal `customer.shipping`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_shipping: Any_ofshipping.t option [@default None];
    (* The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_tax_exempt: Enums.customer_tax_exempt option [@default None];
    (* The customer's tax IDs. Until the invoice is finalized, this field will contain the same tax IDs as `customer.tax_ids`. Once the invoice is finalized, this field will no longer be updated. *)
    customer_tax_ids: Invoices_resource_invoice_tax_id.t list;
    (* ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings. *)
    default_payment_method: Any_ofstringpayment_method.t option [@default None];
    (* ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source. *)
    default_source: Any_ofstringalipay_accountbank_accountbitcoin_receivercardsource.t option [@default None];
    (* The tax rates applied to this invoice, if any. *)
    default_tax_rates: Tax_rate.t list;
    (* An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard. *)
    description: string option [@default None];
    (* Describes the current discount applied to this invoice, if there is one. Not populated if there are multiple discounts. *)
    discount: Any_ofdiscount.t option [@default None];
    (* The discounts applied to the invoice. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount. *)
    discounts: Any_ofstringdiscountdeleted_discount.t list;
    (* The date on which payment for this invoice is due. This value will be `null` for invoices where `collection_method=charge_automatically`. *)
    due_date: int32 option [@default None];
    (* Ending customer balance after the invoice is finalized. Invoices are finalized approximately an hour after successful webhook delivery or when payment collection is attempted for the invoice. If the invoice has not been finalized yet, this will be null. *)
    ending_balance: int32 option [@default None];
    (* Footer displayed on the invoice. *)
    footer: string option [@default None];
    (* The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null. *)
    hosted_invoice_url: string option [@default None];
    (* Unique identifier for the object. *)
    id: string option [@default None];
    (* The link to download the PDF for the invoice. If the invoice has not been finalized yet, this will be null. *)
    invoice_pdf: string option [@default None];
    (* The error encountered during the previous attempt to finalize the invoice. This field is cleared when the invoice is successfully finalized. *)
    last_finalization_error: Any_ofapi_errors.t option [@default None];
    lines: Invoice_lines_list_1.t;
    (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
    livemode: bool;
    (* Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. *)
    metadata: (string * string) list;
    (* The time at which payment will next be attempted. This value will be `null` for invoices where `collection_method=send_invoice`. *)
    next_payment_attempt: int32 option [@default None];
    (* A unique, identifying string that appears on emails sent to the customer for this invoice. This starts with the customer's unique invoice_prefix if it is specified. *)
    number: string option [@default None];
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.deleted_invoice_object[@default `Invoice];
    (* Whether payment was successfully collected for this invoice. An invoice can be paid (most commonly) with a charge or with credit from the customer's account balance. *)
    paid: bool;
    (* The PaymentIntent associated with this invoice. The PaymentIntent is generated when the invoice is finalized, and can then be used to pay the invoice. Note that voiding an invoice will cancel the PaymentIntent. *)
    payment_intent: Any_ofstringpayment_intent.t option [@default None];
    (* End of the usage period during which invoice items were added to this invoice. *)
    period_end: int32;
    (* Start of the usage period during which invoice items were added to this invoice. *)
    period_start: int32;
    (* Total amount of all post-payment credit notes issued for this invoice. *)
    post_payment_credit_notes_amount: int32;
    (* Total amount of all pre-payment credit notes issued for this invoice. *)
    pre_payment_credit_notes_amount: int32;
    (* This is the transaction number that appears on email receipts sent for this invoice. *)
    receipt_number: string option [@default None];
    (* Starting customer balance before the invoice is finalized. If the invoice has not been finalized yet, this will be the current customer balance. *)
    starting_balance: int32;
    (* Extra information about an invoice for the customer's credit card statement. *)
    statement_descriptor: string option [@default None];
    (* The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://stripe.com/docs/billing/invoices/workflow#workflow-overview) *)
    status: Enums.invoice_status option [@default None];
    status_transitions: Invoices_status_transitions.t;
    (* The subscription that this invoice was prepared for, if any. *)
    subscription: Any_ofstringsubscription.t option [@default None];
    (* Only set for upcoming invoices that preview prorations. The time used to calculate prorations. *)
    subscription_proration_date: int32 option [@default None];
    (* Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated *)
    subtotal: int32;
    (* The amount of tax on this invoice. This is the sum of all the tax amounts on this invoice. *)
    tax: int32 option [@default None];
    threshold_reason: Invoice_threshold_reason.t option [@default None];
    (* Total after discounts and taxes. *)
    total: int32;
    (* The aggregate amounts calculated per discount across all line items. *)
    total_discount_amounts: Discounts_resource_discount_amount.t list;
    (* The aggregate amounts calculated per tax rate for all line items. *)
    total_tax_amounts: Invoice_tax_amount.t list;
    (* The account (if any) the payment will be attributed to for tax reporting, and where funds from the payment will be transferred to for the invoice. *)
    transfer_data: Any_ofinvoice_transfer_data.t option [@default None];
    (* Invoices are automatically paid or sent 1 hour after webhooks are delivered, or until all webhook delivery attempts have [been exhausted](https://stripe.com/docs/billing/webhooks#understand). This field tracks the time when webhooks for this invoice were successfully delivered. If the invoice had no webhooks to deliver, this will be set while the invoice is being created. *)
    webhooks_delivered_at: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Invoices are statements of amounts owed by a customer, and are either generated one-off, or generated periodically from a subscription.  They contain [invoice items](https://stripe.com/docs/api#invoiceitems), and proration adjustments that may be caused by subscription upgrades/downgrades (if necessary).  If your invoice is configured to be billed through automatic charges, Stripe automatically finalizes your invoice and attempts payment. Note that finalizing the invoice, [when automatic](https://stripe.com/docs/billing/invoices/workflow/#auto_advance), does not happen immediately as the invoice is created. Stripe waits until one hour after the last webhook was successfully sent (or the last webhook timed out after failing). If you (and the platforms you may have connected to) have no webhooks configured, Stripe waits one hour after creation to finalize the invoice.  If your invoice is configured to be billed by sending an email, then based on your [email settings](https://dashboard.stripe.com/account/billing/automatic'), Stripe will email the invoice to your customer and await payment. These emails can contain a link to a hosted page to pay the invoice.  Stripe applies any customer credit on the account before determining the amount due for the invoice (i.e., the amount that will be actually charged). If the amount due for the invoice is less than Stripe's [minimum allowed charge per currency](/docs/currencies#minimum-and-maximum-charge-amounts), the invoice is automatically marked paid, and we add the amount due to the customer's running account balance which is applied to the next invoice.  More details on the customer's account balance are [here](https://stripe.com/docs/api/customers/object#customer_object-account_balance).  Related guide: [Send Invoices to Customers](https://stripe.com/docs/billing/invoices/sending). *)
let create (amount_due : int32) (amount_paid : int32) (amount_remaining : int32) (attempt_count : int32) (attempted : bool) (created : int32) (currency : string) (customer : Any_ofstringcustomerdeleted_customer.t) (default_tax_rates : Tax_rate.t list) (lines : Invoice_lines_list_1.t) (livemode : bool) (_object : Enums.deleted_invoice_object) (paid : bool) (period_end : int32) (period_start : int32) (post_payment_credit_notes_amount : int32) (pre_payment_credit_notes_amount : int32) (starting_balance : int32) (status_transitions : Invoices_status_transitions.t) (subtotal : int32) (total : int32) (total_tax_amounts : Invoice_tax_amount.t list) : t = {
    account_country = None;
    account_name = None;
    account_tax_ids = [];
    amount_due = amount_due;
    amount_paid = amount_paid;
    amount_remaining = amount_remaining;
    application_fee_amount = None;
    attempt_count = attempt_count;
    attempted = attempted;
    auto_advance = None;
    billing_reason = None;
    charge = None;
    collection_method = None;
    created = created;
    currency = currency;
    custom_fields = [];
    customer = customer;
    customer_address = None;
    customer_email = None;
    customer_name = None;
    customer_phone = None;
    customer_shipping = None;
    customer_tax_exempt = None;
    customer_tax_ids = [];
    default_payment_method = None;
    default_source = None;
    default_tax_rates = default_tax_rates;
    description = None;
    discount = None;
    discounts = [];
    due_date = None;
    ending_balance = None;
    footer = None;
    hosted_invoice_url = None;
    id = None;
    invoice_pdf = None;
    last_finalization_error = None;
    lines = lines;
    livemode = livemode;
    metadata = [];
    next_payment_attempt = None;
    number = None;
    _object = _object;
    paid = paid;
    payment_intent = None;
    period_end = period_end;
    period_start = period_start;
    post_payment_credit_notes_amount = post_payment_credit_notes_amount;
    pre_payment_credit_notes_amount = pre_payment_credit_notes_amount;
    receipt_number = None;
    starting_balance = starting_balance;
    statement_descriptor = None;
    status = None;
    status_transitions = status_transitions;
    subscription = None;
    subscription_proration_date = None;
    subtotal = subtotal;
    tax = None;
    threshold_reason = None;
    total = total;
    total_discount_amounts = [];
    total_tax_amounts = total_tax_amounts;
    transfer_data = None;
    webhooks_delivered_at = None;
}

