(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let search_code ~q ?sort ?(order = `Desc) ?(per_page = 30l) ?(page = 1l) () =
    let open Lwt in
    let uri = Request.build_uri "/search/code" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    let uri = Request.maybe_add_query_param uri "sort" Enums.show_sort_3 sort in
    let uri = Request.add_query_param uri "order" Enums.show_order order in
    let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_17.of_yojson) resp body

let search_commits ~q ?sort ?(order = `Desc) ?(per_page = 30l) ?(page = 1l) () =
    let open Lwt in
    let uri = Request.build_uri "/search/commits" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    let uri = Request.maybe_add_query_param uri "sort" Enums.show_sort_2 sort in
    let uri = Request.add_query_param uri "order" Enums.show_order order in
    let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_18.of_yojson) resp body

let search_issues_and_pull_requests ~q ?sort ?(order = `Desc) ?(per_page = 30l) ?(page = 1l) () =
    let open Lwt in
    let uri = Request.build_uri "/search/issues" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    let uri = Request.maybe_add_query_param uri "sort" Enums.show_sort_5 sort in
    let uri = Request.add_query_param uri "order" Enums.show_order order in
    let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_19.of_yojson) resp body

let search_labels ~repository_id ~q ?sort ?(order = `Desc) () =
    let open Lwt in
    let uri = Request.build_uri "/search/labels" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "repository_id" Int32.to_string repository_id in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    let uri = Request.maybe_add_query_param uri "sort" Enums.show_sort_7 sort in
    let uri = Request.add_query_param uri "order" Enums.show_order order in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_20.of_yojson) resp body

let search_repos ~q ?sort ?(order = `Desc) ?(per_page = 30l) ?(page = 1l) () =
    let open Lwt in
    let uri = Request.build_uri "/search/repositories" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    let uri = Request.maybe_add_query_param uri "sort" Enums.show_sort_9 sort in
    let uri = Request.add_query_param uri "order" Enums.show_order order in
    let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_21.of_yojson) resp body

let search_topics ~q =
    let open Lwt in
    let uri = Request.build_uri "/search/topics" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_22.of_yojson) resp body

let search_users ~q ?sort ?(order = `Desc) ?(per_page = 30l) ?(page = 1l) () =
    let open Lwt in
    let uri = Request.build_uri "/search/users" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "q" (fun x -> x) q in
    let uri = Request.maybe_add_query_param uri "sort" Enums.show_sort_0 sort in
    let uri = Request.add_query_param uri "order" Enums.show_order order in
    let uri = Request.add_query_param uri "per_page" Int32.to_string per_page in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200_23.of_yojson) resp body
