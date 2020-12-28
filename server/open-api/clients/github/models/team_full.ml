(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Team_full.t : Groups of organization members that gives permissions on specified repositories.
 *)

type t = {
  (* Unique identifier of the team *)
  id : int32;
  node_id : string;
  (* URL for the team *)
  url : string;
  html_url : string;
  (* Name of the team *)
  name : string;
  slug : string;
  description : string option;
  (* The level of privacy this team should have *)
  privacy : Enums.team_full_privacy option; [@default None]
  (* Permission that the team will have for its repositories *)
  permission : string;
  members_url : string;
  repositories_url : string;
  parent : Team_simple.t option; [@default None]
  members_count : int32;
  repos_count : int32;
  created_at : string;
  updated_at : string;
  organization : Organization_full.t;
  (* Distinguished Name (DN) that team maps to within LDAP environment *)
  ldap_dn : string option; [@default None]
}
[@@deriving yojson { strict = false }, show]

(** Groups of organization members that gives permissions on specified repositories. *)
let create (id : int32) (node_id : string) (url : string) (html_url : string)
    (name : string) (slug : string) (description : string option)
    (permission : string) (members_url : string) (repositories_url : string)
    (members_count : int32) (repos_count : int32) (created_at : string)
    (updated_at : string) (organization : Organization_full.t) : t =
  {
    id;
    node_id;
    url;
    html_url;
    name;
    slug;
    description;
    privacy = None;
    permission;
    members_url;
    repositories_url;
    parent = None;
    members_count;
    repos_count;
    created_at;
    updated_at;
    organization;
    ldap_dn = None;
  }