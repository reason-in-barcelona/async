(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: int32 option [@default None];
    node_id: string option [@default None];
    url: string option [@default None];
    html_url: string option [@default None];
    name: string option [@default None];
    slug: string option [@default None];
    description: string option [@default None];
    privacy: string option [@default None];
    permission: string option [@default None];
    members_url: string option [@default None];
    repositories_url: string option [@default None];
    parent: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    id = None;
    node_id = None;
    url = None;
    html_url = None;
    name = None;
    slug = None;
    description = None;
    privacy = None;
    permission = None;
    members_url = None;
    repositories_url = None;
    parent = None;
}

