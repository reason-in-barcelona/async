(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Issue_comment.t : Comments provide a way for people to collaborate on an issue.
 *)

type t = {
    (* Unique identifier of the issue comment *)
    id: int32;
    node_id: string;
    (* URL for the issue comment *)
    url: string;
    (* Contents of the issue comment *)
    body: string option [@default None];
    body_text: string option [@default None];
    body_html: string option [@default None];
    html_url: string;
    user: Simple_user.t option;
    created_at: string;
    updated_at: string;
    issue_url: string;
    author_association: Enums.author_association;
    performed_via_github_app: Integration.t option [@default None];
    reactions: Reaction_rollup.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Comments provide a way for people to collaborate on an issue. *)
let create (id : int32) (node_id : string) (url : string) (html_url : string) (user : Simple_user.t option) (created_at : string) (updated_at : string) (issue_url : string) (author_association : Enums.author_association) : t = {
    id = id;
    node_id = node_id;
    url = url;
    body = None;
    body_text = None;
    body_html = None;
    html_url = html_url;
    user = user;
    created_at = created_at;
    updated_at = updated_at;
    issue_url = issue_url;
    author_association = author_association;
    performed_via_github_app = None;
    reactions = None;
}

