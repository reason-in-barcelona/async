(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    html: Pull_request_review__links_html.t;
    pull_request: Pull_request_review__links_html.t;
} [@@deriving yojson { strict = false }, show ];;

let create (html : Pull_request_review__links_html.t) (pull_request : Pull_request_review__links_html.t) : t = {
    html = html;
    pull_request = pull_request;
}
