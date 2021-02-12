(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    canceled: Issuing_dispute_canceled_evidence.t option [@default None];
    duplicate: Issuing_dispute_duplicate_evidence.t option [@default None];
    fraudulent: Issuing_dispute_fraudulent_evidence.t option [@default None];
    merchandise_not_as_described: Issuing_dispute_merchandise_not_as_described_evidence.t option [@default None];
    not_received: Issuing_dispute_not_received_evidence.t option [@default None];
    other: Issuing_dispute_other_evidence.t option [@default None];
    (* The reason for filing the dispute. Its value will match the field containing the evidence. *)
    reason: Enums.issuing_dispute_evidence_reason;
    service_not_as_described: Issuing_dispute_service_not_as_described_evidence.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (reason : Enums.issuing_dispute_evidence_reason) : t = {
    canceled = None;
    duplicate = None;
    fraudulent = None;
    merchandise_not_as_described = None;
    not_received = None;
    other = None;
    reason = reason;
    service_not_as_described = None;
}

