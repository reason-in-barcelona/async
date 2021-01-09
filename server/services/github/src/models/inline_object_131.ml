(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The title of the pull request. *)
    title: string option [@default None];
    (* The contents of the pull request. *)
    body: string option [@default None];
    (* State of this Pull Request. Either `open` or `closed`. *)
    state: Enums.milestone_state option [@default None];
    (* The name of the branch you want your changes pulled into. This should be an existing branch on the current repository. You cannot update the base branch on a pull request to point to another repository. *)
    base: string option [@default None];
    (* Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request. *)
    maintainer_can_modify: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    title = None;
    body = None;
    state = None;
    base = None;
    maintainer_can_modify = None;
}
