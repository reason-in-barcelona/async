(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The permission to grant the collaborator. *)
    permission: Enums.repository_invitation_permissions option [@default Some(`Write)];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    permission = None;
}
