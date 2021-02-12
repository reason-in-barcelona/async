(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Three_d_secure.t : Cardholder authentication via 3D Secure is initiated by creating a `3D Secure` object. Once the object has been created, you can use it to authenticate the cardholder and create a charge.
 *)

type t = {
    (* Amount of the charge that you will create when authentication completes. *)
    amount: int32;
    (* True if the cardholder went through the authentication flow and their bank indicated that authentication succeeded. *)
    authenticated: bool;
    card: Card.t;
    (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
    created: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* Unique identifier for the object. *)
    id: string;
    (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
    livemode: bool;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.three_d_secure_object[@default `Three_d_secure];
    (* If present, this is the URL that you should send the cardholder to for authentication. If you are going to use Stripe.js to display the authentication page in an iframe, you should use the value \''_callback\''. *)
    redirect_url: string option [@default None];
    (* Possible values are `redirect_pending`, `succeeded`, or `failed`. When the cardholder can be authenticated, the object starts with status `redirect_pending`. When liability will be shifted to the cardholder's bank (either because the cardholder was successfully authenticated, or because the bank has not implemented 3D Secure, the object wlil be in status `succeeded`. `failed` indicates that authentication was attempted unsuccessfully. *)
    status: string;
} [@@deriving yojson { strict = false }, show ];;

(** Cardholder authentication via 3D Secure is initiated by creating a `3D Secure` object. Once the object has been created, you can use it to authenticate the cardholder and create a charge. *)
let create (amount : int32) (authenticated : bool) (card : Card.t) (created : int32) (currency : string) (id : string) (livemode : bool) (_object : Enums.three_d_secure_object) (status : string) : t = {
    amount = amount;
    authenticated = authenticated;
    card = card;
    created = created;
    currency = currency;
    id = id;
    livemode = livemode;
    _object = _object;
    redirect_url = None;
    status = status;
}

