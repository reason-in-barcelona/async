(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val gitignore_get_all_templates : unit -> string list Lwt.t
val gitignore_get_template : name:string -> Gitignore_template.t Lwt.t
