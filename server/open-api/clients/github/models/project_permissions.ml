(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = { read : bool; write : bool; admin : bool }
[@@deriving yojson { strict = false }, show]

let create (read : bool) (write : bool) (admin : bool) : t =
  { read; write; admin }