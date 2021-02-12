(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The title of the issue. *)
    title: string option [@default None];
    (* The contents of the issue. *)
    body: string option [@default None];
    (* Login for the user that this issue should be assigned to. **This field is deprecated.** *)
    assignee: string option [@default None];
    (* State of the issue. Either `open` or `closed`. *)
    state: Enums.milestone_state option [@default None];
    (* The `number` of the milestone to associate this issue with or `null` to remove current. _NOTE: Only users with push access can set the milestone for issues. The milestone is silently dropped otherwise._ *)
    milestone: int32 option [@default None];
    (* Labels to associate with this issue. Pass one or more Labels to _replace_ the set of Labels on this Issue. Send an empty array (`[]`) to clear all Labels from the Issue. _NOTE: Only users with push access can set labels for issues. Labels are silently dropped otherwise._ *)
    labels: One_ofstringobject.t list;
    (* Logins for Users to assign to this issue. Pass one or more user logins to _replace_ the set of assignees on this Issue. Send an empty array (`[]`) to clear all assignees from the Issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._ *)
    assignees: string list;
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    title = None;
    body = None;
    assignee = None;
    state = None;
    milestone = None;
    labels = [];
    assignees = [];
}

