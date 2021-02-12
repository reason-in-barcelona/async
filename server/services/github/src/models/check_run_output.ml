(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    title: string option;
    summary: string option;
    text: string option;
    annotations_count: int32;
    annotations_url: string;
} [@@deriving yojson { strict = false }, show ];;

let create (title : string option) (summary : string option) (text : string option) (annotations_count : int32) (annotations_url : string) : t = {
    title = title;
    summary = summary;
    text = text;
    annotations_count = annotations_count;
    annotations_url = annotations_url;
}

