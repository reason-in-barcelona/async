(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = { all : int32 list; owner : int32 list }
[@@deriving yojson { strict = false }, show]

let create () : t = { all = []; owner = [] }