(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Review_comment.t : Legacy Review Comment
 *)

type t = {
    url: string;
    pull_request_review_id: int32 option;
    id: int32;
    node_id: string;
    diff_hunk: string;
    path: string;
    position: int32 option;
    original_position: int32;
    commit_id: string;
    original_commit_id: string;
    in_reply_to_id: int32 option [@default None];
    user: Simple_user.t option;
    body: string;
    created_at: string;
    updated_at: string;
    html_url: string;
    pull_request_url: string;
    author_association: string;
    _links: Review_comment__links.t;
    body_text: string option [@default None];
    body_html: string option [@default None];
    (* The side of the first line of the range for a multi-line comment. *)
    side: Enums.start_side option [@default Some(`RIGHT)];
    (* The side of the first line of the range for a multi-line comment. *)
    start_side: Enums.start_side option [@default Some(`RIGHT)];
    (* The line of the blob to which the comment applies. The last line of the range for a multi-line comment *)
    line: int32 option [@default None];
    (* The original line of the blob to which the comment applies. The last line of the range for a multi-line comment *)
    original_line: int32 option [@default None];
    (* The first line of the range for a multi-line comment. *)
    start_line: int32 option [@default None];
    (* The original first line of the range for a multi-line comment. *)
    original_start_line: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Legacy Review Comment *)
let create (url : string) (pull_request_review_id : int32 option) (id : int32) (node_id : string) (diff_hunk : string) (path : string) (position : int32 option) (original_position : int32) (commit_id : string) (original_commit_id : string) (user : Simple_user.t option) (body : string) (created_at : string) (updated_at : string) (html_url : string) (pull_request_url : string) (author_association : string) (_links : Review_comment__links.t) : t = {
    url = url;
    pull_request_review_id = pull_request_review_id;
    id = id;
    node_id = node_id;
    diff_hunk = diff_hunk;
    path = path;
    position = position;
    original_position = original_position;
    commit_id = commit_id;
    original_commit_id = original_commit_id;
    in_reply_to_id = None;
    user = user;
    body = body;
    created_at = created_at;
    updated_at = updated_at;
    html_url = html_url;
    pull_request_url = pull_request_url;
    author_association = author_association;
    _links = _links;
    body_text = None;
    body_html = None;
    side = None;
    start_side = None;
    line = None;
    original_line = None;
    start_line = None;
    original_start_line = None;
}

