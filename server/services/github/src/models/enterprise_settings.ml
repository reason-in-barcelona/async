(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    enterprise: Enterprise_settings_enterprise.t option [@default None];
    run_list: string list;
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    enterprise = None;
    run_list = [];
}
