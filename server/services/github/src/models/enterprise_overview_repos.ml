(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    total_repos: int32 option [@default None];
    root_repos: int32 option [@default None];
    fork_repos: int32 option [@default None];
    org_repos: int32 option [@default None];
    total_pushes: int32 option [@default None];
    total_wikis: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    total_repos = None;
    root_repos = None;
    fork_repos = None;
    org_repos = None;
    total_pushes = None;
    total_wikis = None;
}

