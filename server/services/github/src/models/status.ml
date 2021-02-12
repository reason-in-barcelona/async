(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Status.t : The status of a commit.
 *)

type t = {
    url: string option [@default None];
    avatar_url: string option [@default None];
    id: int32 option [@default None];
    node_id: string option [@default None];
    state: string option [@default None];
    description: string option [@default None];
    target_url: string option [@default None];
    context: string option [@default None];
    created_at: string option [@default None];
    updated_at: string option [@default None];
    creator: Simple_user.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** The status of a commit. *)
let create () : t = {
    url = None;
    avatar_url = None;
    id = None;
    node_id = None;
    state = None;
    description = None;
    target_url = None;
    context = None;
    created_at = None;
    updated_at = None;
    creator = None;
}

