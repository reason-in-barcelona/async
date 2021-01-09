(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    dismissal_restrictions: Model__repos__owner___repo__branches__branch__protection_required_pull_request_reviews_dismissal_restrictions.t option [@default None];
    (* Set to `true` if you want to automatically dismiss approving reviews when someone pushes a new commit. *)
    dismiss_stale_reviews: bool option [@default None];
    (* Blocks merging pull requests until [code owners](https://help.github.com/articles/about-code-owners/) have reviewed. *)
    require_code_owner_reviews: bool option [@default None];
    (* Specifies the number of reviewers required to approve pull requests. Use a number between 1 and 6. *)
    required_approving_review_count: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    dismissal_restrictions = None;
    dismiss_stale_reviews = None;
    require_code_owner_reviews = None;
    required_approving_review_count = None;
}
