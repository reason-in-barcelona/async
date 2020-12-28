(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Subscription_schedule_phase_configuration.t : A phase describes the plans, coupon, and trialing status of a subscription for a predefined time period.
 *)

type t = {
  (* A list of prices and quantities that will generate invoice items appended to the first invoice for this phase. *)
  add_invoice_items : Subscription_schedule_add_invoice_item.t list;
  (* A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account during this phase of the schedule. *)
  application_fee_percent : float option; [@default None]
  (* Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle). *)
  billing_cycle_anchor : Enums.billing_cycle_anchor option; [@default None]
  (* Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period *)
  billing_thresholds : Any_ofsubscription_billing_thresholds.t option;
      [@default None]
  (* Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. *)
  collection_method : Enums.collection_method option; [@default None]
  (* ID of the coupon to use during this phase of the subscription schedule. *)
  coupon : Any_ofstringcoupondeleted_coupon.t option; [@default None]
  (* ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings. *)
  default_payment_method : Any_ofstringpayment_method.t option; [@default None]
  (* The default tax rates to apply to the subscription during this phase of the subscription schedule. *)
  default_tax_rates : Tax_rate.t list;
  (* The end of this phase of the subscription schedule. *)
  end_date : int32;
  (* The subscription schedule's default invoice settings. *)
  invoice_settings :
    Any_ofinvoice_setting_subscription_schedule_setting.t option;
      [@default None]
  (* Subscription items to configure the subscription to during this phase of the subscription schedule. *)
  items : Subscription_schedule_configuration_item.t list;
  (* If the subscription schedule will prorate when transitioning to this phase. Possible values are `create_prorations` and `none`. *)
  proration_behavior : Enums.proration_behavior;
  (* The start of this phase of the subscription schedule. *)
  start_date : int32;
  (* The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices. *)
  transfer_data : Any_ofsubscription_transfer_data.t option; [@default None]
  (* When the trial ends within the phase. *)
  trial_end : int32 option; [@default None]
}
[@@deriving yojson { strict = false }, show]

(** A phase describes the plans, coupon, and trialing status of a subscription for a predefined time period. *)
let create (add_invoice_items : Subscription_schedule_add_invoice_item.t list)
    (end_date : int32) (items : Subscription_schedule_configuration_item.t list)
    (proration_behavior : Enums.proration_behavior) (start_date : int32) : t =
  {
    add_invoice_items;
    application_fee_percent = None;
    billing_cycle_anchor = None;
    billing_thresholds = None;
    collection_method = None;
    coupon = None;
    default_payment_method = None;
    default_tax_rates = [];
    end_date;
    invoice_settings = None;
    items;
    proration_behavior;
    start_date;
    transfer_data = None;
    trial_end = None;
  }