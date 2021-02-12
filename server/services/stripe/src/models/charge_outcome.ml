(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Possible values are `approved_by_network`, `declined_by_network`, `not_sent_to_network`, and `reversed_after_approval`. The value `reversed_after_approval` indicates the payment was [blocked by Stripe](https://stripe.com/docs/declines#blocked-payments) after bank authorization, and may temporarily appear as \''pending\'' on a cardholder's statement. *)
    network_status: string option [@default None];
    (* An enumerated value providing a more detailed explanation of the outcome's `type`. Charges blocked by Radar's default block rule have the value `highest_risk_level`. Charges placed in review by Radar's default review rule have the value `elevated_risk_level`. Charges authorized, blocked, or placed in review by custom rules have the value `rule`. See [understanding declines](https://stripe.com/docs/declines) for more details. *)
    reason: string option [@default None];
    (* Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are `normal`, `elevated`, `highest`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value `not_assessed`. In the event of an error in the evaluation, this field will have the value `unknown`. This field is only available with Radar. *)
    risk_level: string option [@default None];
    (* Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams. *)
    risk_score: int32 option [@default None];
    (* The ID of the Radar rule that matched the payment, if applicable. *)
    rule: Any_ofstringrule.t option [@default None];
    (* A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer. *)
    seller_message: string option [@default None];
    (* Possible values are `authorized`, `manual_review`, `issuer_declined`, `blocked`, and `invalid`. See [understanding declines](https://stripe.com/docs/declines) and [Radar reviews](https://stripe.com/docs/radar/reviews) for details. *)
    _type: string;
} [@@deriving yojson { strict = false }, show ];;

let create (_type : string) : t = {
    network_status = None;
    reason = None;
    risk_level = None;
    risk_score = None;
    rule = None;
    seller_message = None;
    _type = _type;
}

