(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    seats: int32 option [@default None];
    seats_used: int32 option [@default None];
    seats_available: int32 option [@default None];
    kind: string option [@default None];
    days_until_expiration: int32 option [@default None];
    expire_at: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    seats = None;
    seats_used = None;
    seats_available = None;
    kind = None;
    days_until_expiration = None;
    expire_at = None;
}

