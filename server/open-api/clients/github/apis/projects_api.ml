(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let projects_add_collaborator ~project_id ~username ~inline_object_62_t () =
  let open Lwt in
  let uri =
    Request.build_uri "/projects/{project_id}/collaborators/{username}"
  in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let uri = Request.replace_path_param uri "username" (fun x -> x) username in
  let body =
    Request.write_as_json_body Inline_object_62.to_yojson inline_object_62_t
  in
  Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
  Request.handle_unit_response resp

let projects_create_card ~column_id ~unknown_base_type () =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/{column_id}/cards" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "column_id" Int32.to_string column_id
  in
  let body =
    Request.write_as_json_body UNKNOWN_BASE_TYPE.to_yojson unknown_base_type
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Project_card.of_yojson)
    resp body

let projects_create_column ~project_id ~inline_object_63_t () =
  let open Lwt in
  let uri = Request.build_uri "/projects/{project_id}/columns" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let body =
    Request.write_as_json_body Inline_object_63.to_yojson inline_object_63_t
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Project_column.of_yojson)
    resp body

let projects_create_for_authenticated_user ~inline_object_170_t () =
  let open Lwt in
  let uri = Request.build_uri "/user/projects" in
  let headers = Request.default_headers in
  let body =
    Request.write_as_json_body Inline_object_170.to_yojson inline_object_170_t
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as (JsonSupport.unwrap Project.of_yojson) resp body

let projects_create_for_org ~org ~inline_object_44_t () =
  let open Lwt in
  let uri = Request.build_uri "/orgs/{org}/projects" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "org" (fun x -> x) org in
  let body =
    Request.write_as_json_body Inline_object_44.to_yojson inline_object_44_t
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as (JsonSupport.unwrap Project.of_yojson) resp body

let projects_create_for_repo ~owner ~repo ~inline_object_127_t () =
  let open Lwt in
  let uri = Request.build_uri "/repos/{owner}/{repo}/projects" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "owner" (fun x -> x) owner in
  let uri = Request.replace_path_param uri "repo" (fun x -> x) repo in
  let body =
    Request.write_as_json_body Inline_object_127.to_yojson inline_object_127_t
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as (JsonSupport.unwrap Project.of_yojson) resp body

let projects_delete ~project_id =
  let open Lwt in
  let uri = Request.build_uri "/projects/{project_id}" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
  Request.handle_unit_response resp

let projects_delete_card ~card_id =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/cards/{card_id}" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "card_id" Int32.to_string card_id in
  Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
  Request.handle_unit_response resp

let projects_delete_column ~column_id =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/{column_id}" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "column_id" Int32.to_string column_id
  in
  Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
  Request.handle_unit_response resp

let projects_get ~project_id =
  let open Lwt in
  let uri = Request.build_uri "/projects/{project_id}" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as (JsonSupport.unwrap Project.of_yojson) resp body

let projects_get_card ~card_id =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/cards/{card_id}" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "card_id" Int32.to_string card_id in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Project_card.of_yojson)
    resp body

let projects_get_column ~column_id =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/{column_id}" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "column_id" Int32.to_string column_id
  in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Project_column.of_yojson)
    resp body

let projects_get_permission_for_user ~project_id ~username =
  let open Lwt in
  let uri =
    Request.build_uri
      "/projects/{project_id}/collaborators/{username}/permission"
  in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let uri = Request.replace_path_param uri "username" (fun x -> x) username in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Repository_collaborator_permission.of_yojson)
    resp body

let projects_list_cards ~column_id ?(archived_state = `Not_archived)
    ?(per_page = 30l) ?(page = 1l) () =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/{column_id}/cards" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "column_id" Int32.to_string column_id
  in
  let uri =
    Request.add_query_param uri "archived_state" Enums.show_archived_state
      archived_state
  in
  let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
  let uri = Request.add_query_param uri "page" Int32.to_string page in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as_list_of
    (JsonSupport.unwrap Project_card.of_yojson)
    resp body

let projects_list_collaborators ~project_id ?(affiliation = `All)
    ?(per_page = 30l) ?(page = 1l) () =
  let open Lwt in
  let uri = Request.build_uri "/projects/{project_id}/collaborators" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let uri =
    Request.add_query_param uri "affiliation" Enums.show_affiliation affiliation
  in
  let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
  let uri = Request.add_query_param uri "page" Int32.to_string page in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as_list_of
    (JsonSupport.unwrap Simple_user.of_yojson)
    resp body

let projects_list_columns ~project_id ?(per_page = 30l) ?(page = 1l) () =
  let open Lwt in
  let uri = Request.build_uri "/projects/{project_id}/columns" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
  let uri = Request.add_query_param uri "page" Int32.to_string page in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as_list_of
    (JsonSupport.unwrap Project_column.of_yojson)
    resp body

let projects_list_for_org ~org ?(state = `_open) ?(per_page = 30l) ?(page = 1l)
    () =
  let open Lwt in
  let uri = Request.build_uri "/orgs/{org}/projects" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "org" (fun x -> x) org in
  let uri = Request.add_query_param uri "state" Enums.show_state_1 state in
  let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
  let uri = Request.add_query_param uri "page" Int32.to_string page in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as_list_of
    (JsonSupport.unwrap Project.of_yojson)
    resp body

let projects_list_for_repo ~owner ~repo ?(state = `_open) ?(per_page = 30l)
    ?(page = 1l) () =
  let open Lwt in
  let uri = Request.build_uri "/repos/{owner}/{repo}/projects" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "owner" (fun x -> x) owner in
  let uri = Request.replace_path_param uri "repo" (fun x -> x) repo in
  let uri = Request.add_query_param uri "state" Enums.show_state_1 state in
  let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
  let uri = Request.add_query_param uri "page" Int32.to_string page in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as_list_of
    (JsonSupport.unwrap Project.of_yojson)
    resp body

let projects_list_for_user ~username ?(state = `_open) ?(per_page = 30l)
    ?(page = 1l) () =
  let open Lwt in
  let uri = Request.build_uri "/users/{username}/projects" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "username" (fun x -> x) username in
  let uri = Request.add_query_param uri "state" Enums.show_state_1 state in
  let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
  let uri = Request.add_query_param uri "page" Int32.to_string page in
  Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
  Request.read_json_body_as_list_of
    (JsonSupport.unwrap Project.of_yojson)
    resp body

let projects_move_card ~card_id ~inline_object_58_t () =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/cards/{card_id}/moves" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "card_id" Int32.to_string card_id in
  let body =
    Request.write_as_json_body Inline_object_58.to_yojson inline_object_58_t
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body resp body

let projects_move_column ~column_id ~inline_object_60_t () =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/{column_id}/moves" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "column_id" Int32.to_string column_id
  in
  let body =
    Request.write_as_json_body Inline_object_60.to_yojson inline_object_60_t
  in
  Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body resp body

let projects_remove_collaborator ~project_id ~username =
  let open Lwt in
  let uri =
    Request.build_uri "/projects/{project_id}/collaborators/{username}"
  in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let uri = Request.replace_path_param uri "username" (fun x -> x) username in
  Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
  Request.handle_unit_response resp

let projects_update ~project_id ~inline_object_61_t () =
  let open Lwt in
  let uri = Request.build_uri "/projects/{project_id}" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "project_id" Int32.to_string project_id
  in
  let body =
    Request.write_as_json_body Inline_object_61.to_yojson inline_object_61_t
  in
  Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as (JsonSupport.unwrap Project.of_yojson) resp body

let projects_update_card ~card_id ~inline_object_57_t () =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/cards/{card_id}" in
  let headers = Request.default_headers in
  let uri = Request.replace_path_param uri "card_id" Int32.to_string card_id in
  let body =
    Request.write_as_json_body Inline_object_57.to_yojson inline_object_57_t
  in
  Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Project_card.of_yojson)
    resp body

let projects_update_column ~column_id ~inline_object_59_t () =
  let open Lwt in
  let uri = Request.build_uri "/projects/columns/{column_id}" in
  let headers = Request.default_headers in
  let uri =
    Request.replace_path_param uri "column_id" Int32.to_string column_id
  in
  let body =
    Request.write_as_json_body Inline_object_59.to_yojson inline_object_59_t
  in
  Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
  Request.read_json_body_as
    (JsonSupport.unwrap Project_column.of_yojson)
    resp body