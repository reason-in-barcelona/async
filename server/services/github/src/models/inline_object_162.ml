(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The [reaction type](https://docs.github.com/enterprise-server@2.22/rest/reference/reactions#reaction-types) to add to the team discussion. *)
    content: Enums.content;
} [@@deriving yojson { strict = false }, show ];;

let create (content : Enums.content) : t = {
    content = content;
}

