(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The organization or person who will own the new repository. To create a new repository in an organization, the authenticated user must be a member of the specified organization. *)
    owner: string option [@default None];
    (* The name of the new repository. *)
    name: string;
    (* A short description of the new repository. *)
    description: string option [@default None];
    (* Set to `true` to include the directory structure and files from all branches in the template repository, and not just the default branch. Default: `false`. *)
    include_all_branches: bool option [@default None];
    (* Either `true` to create a new private repository or `false` to create a new public one. *)
    _private: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (name : string) : t = {
    owner = None;
    name = name;
    description = None;
    include_all_branches = None;
    _private = None;
}
