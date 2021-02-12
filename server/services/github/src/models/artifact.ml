(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Artifact.t : An artifact
 *)

type t = {
    id: int32;
    node_id: string;
    (* The name of the artifact. *)
    name: string;
    (* The size in bytes of the artifact. *)
    size_in_bytes: int32;
    url: string;
    archive_download_url: string;
    (* Whether or not the artifact has expired. *)
    expired: bool;
    created_at: string option;
    expires_at: string;
    updated_at: string option;
} [@@deriving yojson { strict = false }, show ];;

(** An artifact *)
let create (id : int32) (node_id : string) (name : string) (size_in_bytes : int32) (url : string) (archive_download_url : string) (expired : bool) (created_at : string option) (expires_at : string) (updated_at : string option) : t = {
    id = id;
    node_id = node_id;
    name = name;
    size_in_bytes = size_in_bytes;
    url = url;
    archive_download_url = archive_download_url;
    expired = expired;
    created_at = created_at;
    expires_at = expires_at;
    updated_at = updated_at;
}
