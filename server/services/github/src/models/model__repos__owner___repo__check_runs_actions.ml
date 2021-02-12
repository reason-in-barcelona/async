(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The text to be displayed on a button in the web UI. The maximum size is 20 characters. *)
    label: string;
    (* A short explanation of what this action would do. The maximum size is 40 characters. *)
    description: string;
    (* A reference for the action on the integrator's system. The maximum size is 20 characters. *)
    identifier: string;
} [@@deriving yojson { strict = false }, show ];;

let create (label : string) (description : string) (identifier : string) : t = {
    label = label;
    description = description;
    identifier = identifier;
}

