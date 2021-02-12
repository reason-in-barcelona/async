(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Commit_comparison.t : Commit Comparison
 *)

type t = {
    url: string;
    html_url: string;
    permalink_url: string;
    diff_url: string;
    patch_url: string;
    base_commit: Commit.t;
    merge_base_commit: Commit.t;
    status: Enums.status;
    ahead_by: int32;
    behind_by: int32;
    total_commits: int32;
    commits: Commit.t list;
    files: Diff_entry.t list;
} [@@deriving yojson { strict = false }, show ];;

(** Commit Comparison *)
let create (url : string) (html_url : string) (permalink_url : string) (diff_url : string) (patch_url : string) (base_commit : Commit.t) (merge_base_commit : Commit.t) (status : Enums.status) (ahead_by : int32) (behind_by : int32) (total_commits : int32) (commits : Commit.t list) (files : Diff_entry.t list) : t = {
    url = url;
    html_url = html_url;
    permalink_url = permalink_url;
    diff_url = diff_url;
    patch_url = patch_url;
    base_commit = base_commit;
    merge_base_commit = merge_base_commit;
    status = status;
    ahead_by = ahead_by;
    behind_by = behind_by;
    total_commits = total_commits;
    commits = commits;
    files = files;
}
