(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = { admin : bool; pull : bool; push : bool }
[@@deriving yojson { strict = false }, show]

let create (admin : bool) (pull : bool) (push : bool) : t =
  { admin; pull; push }