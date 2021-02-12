(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The time at which the customer accepted the Mandate. *)
    accepted_at: int32 option [@default None];
    offline: Yojson.Safe.t option [@default None];
    online: Online_acceptance.t option [@default None];
    (* The type of customer acceptance information included with the Mandate. One of `online` or `offline`. *)
    _type: Enums.customer_acceptance_type;
} [@@deriving yojson { strict = false }, show ];;

let create (_type : Enums.customer_acceptance_type) : t = {
    accepted_at = None;
    offline = None;
    online = None;
    _type = _type;
}
