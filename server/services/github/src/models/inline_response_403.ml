(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    block: Inline_response_403_block.t option [@default None];
    message: string option [@default None];
    documentation_url: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    block = None;
    message = None;
    documentation_url = None;
}

