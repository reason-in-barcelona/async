(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The IP address from which the Mandate was accepted by the customer. *)
    ip_address: string option [@default None];
    (* The user agent of the browser from which the Mandate was accepted by the customer. *)
    user_agent: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    ip_address = None;
    user_agent = None;
}
