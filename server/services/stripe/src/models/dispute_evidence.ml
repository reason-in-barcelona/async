(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity. *)
    access_activity_log: string option [@default None];
    (* The billing address provided by the customer. *)
    billing_address: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer. *)
    cancellation_policy: Any_ofstringfile.t option [@default None];
    (* An explanation of how and when the customer was shown your refund policy prior to purchase. *)
    cancellation_policy_disclosure: string option [@default None];
    (* A justification for why the customer's subscription was not canceled. *)
    cancellation_rebuttal: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service. *)
    customer_communication: Any_ofstringfile.t option [@default None];
    (* The email address of the customer. *)
    customer_email_address: string option [@default None];
    (* The name of the customer. *)
    customer_name: string option [@default None];
    (* The IP address that the customer used when making the purchase. *)
    customer_purchase_ip: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature. *)
    customer_signature: Any_ofstringfile.t option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate. *)
    duplicate_charge_documentation: Any_ofstringfile.t option [@default None];
    (* An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate. *)
    duplicate_charge_explanation: string option [@default None];
    (* The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge. *)
    duplicate_charge_id: string option [@default None];
    (* A description of the product or service that was sold. *)
    product_description: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge. *)
    receipt: Any_ofstringfile.t option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer. *)
    refund_policy: Any_ofstringfile.t option [@default None];
    (* Documentation demonstrating that the customer was shown your refund policy prior to purchase. *)
    refund_policy_disclosure: string option [@default None];
    (* A justification for why the customer is not entitled to a refund. *)
    refund_refusal_explanation: string option [@default None];
    (* The date on which the customer received or began receiving the purchased service, in a clear human-readable format. *)
    service_date: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement. *)
    service_documentation: Any_ofstringfile.t option [@default None];
    (* The address to which a physical product was shipped. You should try to include as complete address information as possible. *)
    shipping_address: string option [@default None];
    (* The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas. *)
    shipping_carrier: string option [@default None];
    (* The date on which a physical product began its route to the shipping address, in a clear human-readable format. *)
    shipping_date: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible. *)
    shipping_documentation: Any_ofstringfile.t option [@default None];
    (* The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas. *)
    shipping_tracking_number: string option [@default None];
    (* (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements. *)
    uncategorized_file: Any_ofstringfile.t option [@default None];
    (* Any additional evidence or statements. *)
    uncategorized_text: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    access_activity_log = None;
    billing_address = None;
    cancellation_policy = None;
    cancellation_policy_disclosure = None;
    cancellation_rebuttal = None;
    customer_communication = None;
    customer_email_address = None;
    customer_name = None;
    customer_purchase_ip = None;
    customer_signature = None;
    duplicate_charge_documentation = None;
    duplicate_charge_explanation = None;
    duplicate_charge_id = None;
    product_description = None;
    receipt = None;
    refund_policy = None;
    refund_policy_disclosure = None;
    refund_refusal_explanation = None;
    service_date = None;
    service_documentation = None;
    shipping_address = None;
    shipping_carrier = None;
    shipping_date = None;
    shipping_documentation = None;
    shipping_tracking_number = None;
    uncategorized_file = None;
    uncategorized_text = None;
}

