(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val issues_add_assignees : owner:string -> repo:string -> issue_number:int32 -> inline_object_110_t:Inline_object_110.t -> unit -> Issue_simple.t Lwt.t
val issues_add_labels : owner:string -> repo:string -> issue_number:int32 -> inline_object_114_t:Inline_object_114.t -> unit -> Label.t list Lwt.t
val issues_check_user_can_be_assigned : owner:string -> repo:string -> assignee:string -> unit Lwt.t
val issues_create : owner:string -> repo:string -> inline_object_106_t:Inline_object_106.t -> unit -> Issue.t Lwt.t
val issues_create_comment : owner:string -> repo:string -> issue_number:int32 -> inline_object_112_t:Inline_object_112.t -> unit -> Issue_comment.t Lwt.t
val issues_create_label : owner:string -> repo:string -> inline_object_118_t:Inline_object_118.t -> unit -> Label.t Lwt.t
val issues_create_milestone : owner:string -> repo:string -> inline_object_121_t:Inline_object_121.t -> unit -> Milestone.t Lwt.t
val issues_delete_comment : owner:string -> repo:string -> comment_id:int32 -> unit Lwt.t
val issues_delete_label : owner:string -> repo:string -> name:string -> unit Lwt.t
val issues_delete_milestone : owner:string -> repo:string -> milestone_number:int32 -> unit Lwt.t
val issues_get : owner:string -> repo:string -> issue_number:int32 -> Issue.t Lwt.t
val issues_get_comment : owner:string -> repo:string -> comment_id:int32 -> Issue_comment.t Lwt.t
val issues_get_event : owner:string -> repo:string -> event_id:int32 -> Issue_event.t Lwt.t
val issues_get_label : owner:string -> repo:string -> name:string -> Label.t Lwt.t
val issues_get_milestone : owner:string -> repo:string -> milestone_number:int32 -> Milestone.t Lwt.t
val issues_list : ?filter:Enums.filter_0 -> ?state:Enums.state_1 -> ?labels:string -> ?sort:Enums.sort_6 -> ?direction:Enums.direction -> ?since:string -> ?collab:bool -> ?orgs:bool -> ?owned:bool -> ?pulls:bool -> ?per_page:int32 -> ?page:int32 -> unit -> Issue.t list Lwt.t
val issues_list_assignees : owner:string -> repo:string -> ?per_page:int32 -> ?page:int32 -> unit -> Simple_user.t list Lwt.t
val issues_list_comments : owner:string -> repo:string -> issue_number:int32 -> ?since:string -> ?per_page:int32 -> ?page:int32 -> unit -> Issue_comment.t list Lwt.t
val issues_list_comments_for_repo : owner:string -> repo:string -> ?sort:Enums.sort_7 -> ?direction:Enums.direction -> ?since:string -> ?per_page:int32 -> ?page:int32 -> unit -> Issue_comment.t list Lwt.t
val issues_list_events : owner:string -> repo:string -> issue_number:int32 -> ?per_page:int32 -> ?page:int32 -> unit -> Issue_event_for_issue.t list Lwt.t
val issues_list_events_for_repo : owner:string -> repo:string -> ?per_page:int32 -> ?page:int32 -> unit -> Issue_event.t list Lwt.t
val issues_list_events_for_timeline : owner:string -> repo:string -> issue_number:int32 -> ?per_page:int32 -> ?page:int32 -> unit -> Issue_event_for_issue.t list Lwt.t
val issues_list_for_authenticated_user : ?filter:Enums.filter_0 -> ?state:Enums.state_1 -> ?labels:string -> ?sort:Enums.sort_6 -> ?direction:Enums.direction -> ?since:string -> ?per_page:int32 -> ?page:int32 -> unit -> Issue.t list Lwt.t
val issues_list_for_org : org:string -> ?filter:Enums.filter_0 -> ?state:Enums.state_1 -> ?labels:string -> ?sort:Enums.sort_6 -> ?direction:Enums.direction -> ?since:string -> ?per_page:int32 -> ?page:int32 -> unit -> Issue.t list Lwt.t
val issues_list_for_repo : owner:string -> repo:string -> ?milestone:string -> ?state:Enums.state_1 -> ?assignee:string -> ?creator:string -> ?mentioned:string -> ?labels:string -> ?sort:Enums.sort_6 -> ?direction:Enums.direction -> ?since:string -> ?per_page:int32 -> ?page:int32 -> unit -> Issue_simple.t list Lwt.t
val issues_list_labels_for_milestone : owner:string -> repo:string -> milestone_number:int32 -> ?per_page:int32 -> ?page:int32 -> unit -> Label.t list Lwt.t
val issues_list_labels_for_repo : owner:string -> repo:string -> ?per_page:int32 -> ?page:int32 -> unit -> Label.t list Lwt.t
val issues_list_labels_on_issue : owner:string -> repo:string -> issue_number:int32 -> ?per_page:int32 -> ?page:int32 -> unit -> Label.t list Lwt.t
val issues_list_milestones : owner:string -> repo:string -> ?state:Enums.state_1 -> ?sort:Enums.sort -> ?direction:Enums.direction -> ?per_page:int32 -> ?page:int32 -> unit -> Milestone.t list Lwt.t
val issues_lock : owner:string -> repo:string -> issue_number:int32 -> inline_object_115_t:Inline_object_115.t -> unit -> unit Lwt.t
val issues_remove_all_labels : owner:string -> repo:string -> issue_number:int32 -> unit Lwt.t
val issues_remove_assignees : owner:string -> repo:string -> issue_number:int32 -> inline_object_111_t:Inline_object_111.t -> unit -> Issue_simple.t Lwt.t
val issues_remove_label : owner:string -> repo:string -> issue_number:int32 -> name:string -> Label.t list Lwt.t
val issues_set_labels : owner:string -> repo:string -> issue_number:int32 -> inline_object_113_t:Inline_object_113.t -> unit -> Label.t list Lwt.t
val issues_unlock : owner:string -> repo:string -> issue_number:int32 -> unit Lwt.t
val issues_update : owner:string -> repo:string -> issue_number:int32 -> inline_object_109_t:Inline_object_109.t -> unit -> Issue.t Lwt.t
val issues_update_comment : owner:string -> repo:string -> comment_id:int32 -> inline_object_107_t:Inline_object_107.t -> unit -> Issue_comment.t Lwt.t
val issues_update_label : owner:string -> repo:string -> name:string -> inline_object_119_t:Inline_object_119.t -> unit -> Label.t Lwt.t
val issues_update_milestone : owner:string -> repo:string -> milestone_number:int32 -> inline_object_122_t:Inline_object_122.t -> unit -> Milestone.t Lwt.t
