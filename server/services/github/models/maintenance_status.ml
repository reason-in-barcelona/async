(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
  status : string option; [@default None]
  scheduled_time : string option; [@default None]
  connection_services : Maintenance_status_connection_services.t list;
}
[@@deriving yojson { strict = false }, show]

let create () : t =
  { status = None; scheduled_time = None; connection_services = [] }