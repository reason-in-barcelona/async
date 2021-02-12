(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion. *)
    return_url: string option [@default None];
    (* The URL you must redirect your customer to in order to authenticate the payment. *)
    url: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    return_url = None;
    url = None;
}

