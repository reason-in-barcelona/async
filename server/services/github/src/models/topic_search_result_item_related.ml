(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    topic_relation: Topic_search_result_item_topic_relation.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    topic_relation = None;
}

