(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Team_project.t : A team's access to a project.
 *)

type t = {
    owner_url: string option [@default None];
    url: string option [@default None];
    html_url: string option [@default None];
    columns_url: string option [@default None];
    id: int32 option [@default None];
    node_id: string option [@default None];
    name: string option [@default None];
    body: string option [@default None];
    number: int32 option [@default None];
    state: string option [@default None];
    creator: Simple_user.t option [@default None];
    created_at: string option [@default None];
    updated_at: string option [@default None];
    organization_permission: string option [@default None];
    _private: bool option [@default None];
    permissions: Team_project_permissions.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** A team's access to a project. *)
let create () : t = {
    owner_url = None;
    url = None;
    html_url = None;
    columns_url = None;
    id = None;
    node_id = None;
    name = None;
    body = None;
    number = None;
    state = None;
    creator = None;
    created_at = None;
    updated_at = None;
    organization_permission = None;
    _private = None;
    permissions = None;
}

