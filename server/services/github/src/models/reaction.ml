(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Reaction.t : Reactions to conversations provide a way to help people express their feelings more simply and effectively.
 *)

type t = {
    id: int32;
    node_id: string;
    user: Simple_user.t option;
    (* The reaction to use *)
    content: Enums.content;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Reactions to conversations provide a way to help people express their feelings more simply and effectively. *)
let create (id : int32) (node_id : string) (user : Simple_user.t option) (content : Enums.content) (created_at : string) : t = {
    id = id;
    node_id = node_id;
    user = user;
    content = content;
    created_at = created_at;
}

