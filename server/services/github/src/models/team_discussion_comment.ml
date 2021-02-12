(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Team_discussion_comment.t : A reply to a discussion within a team.
 *)

type t = {
    author: Simple_user.t option;
    (* The main text of the comment. *)
    body: string;
    body_html: string;
    (* The current version of the body content. If provided, this update operation will be rejected if the given version does not match the latest version on the server. *)
    body_version: string;
    created_at: string;
    last_edited_at: string option;
    discussion_url: string;
    html_url: string;
    node_id: string;
    (* The unique sequence number of a team discussion comment. *)
    number: int32;
    updated_at: string;
    url: string;
    reactions: Reaction_rollup.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** A reply to a discussion within a team. *)
let create (author : Simple_user.t option) (body : string) (body_html : string) (body_version : string) (created_at : string) (last_edited_at : string option) (discussion_url : string) (html_url : string) (node_id : string) (number : int32) (updated_at : string) (url : string) : t = {
    author = author;
    body = body;
    body_html = body_html;
    body_version = body_version;
    created_at = created_at;
    last_edited_at = last_edited_at;
    discussion_url = discussion_url;
    html_url = html_url;
    node_id = node_id;
    number = number;
    updated_at = updated_at;
    url = url;
    reactions = None;
}

