(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val checks_create : owner:string -> repo:string -> inline_object_82_t:Inline_object_82.t -> unit -> Check_run.t Lwt.t
val checks_create_suite : owner:string -> repo:string -> inline_object_84_t:Inline_object_84.t -> unit -> Check_suite.t Lwt.t
val checks_get : owner:string -> repo:string -> check_run_id:int32 -> Check_run.t Lwt.t
val checks_get_suite : owner:string -> repo:string -> check_suite_id:int32 -> Check_suite.t Lwt.t
val checks_list_annotations : owner:string -> repo:string -> check_run_id:int32 -> ?per_page:int32 -> ?page:int32 -> unit -> Check_annotation.t list Lwt.t
val checks_list_for_ref : owner:string -> repo:string -> ref:string -> ?check_name:string -> ?status:Enums.job_status -> ?filter:Enums.filter -> ?per_page:int32 -> ?page:int32 -> unit -> Inline_response_200_15.t Lwt.t
val checks_list_for_suite : owner:string -> repo:string -> check_suite_id:int32 -> ?check_name:string -> ?status:Enums.job_status -> ?filter:Enums.filter -> ?per_page:int32 -> ?page:int32 -> unit -> Inline_response_200_15.t Lwt.t
val checks_list_suites_for_ref : owner:string -> repo:string -> ref:string -> ?app_id:int32 -> ?check_name:string -> ?per_page:int32 -> ?page:int32 -> unit -> Inline_response_200_16.t Lwt.t
val checks_rerequest_suite : owner:string -> repo:string -> check_suite_id:int32 -> unit Lwt.t
val checks_set_suites_preferences : owner:string -> repo:string -> inline_object_85_t:Inline_object_85.t -> unit -> Check_suite_preference.t Lwt.t
val checks_update : owner:string -> repo:string -> check_run_id:int32 -> inline_object_83_t:Inline_object_83.t -> unit -> Check_run.t Lwt.t