(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Check_annotation.t : Check Annotation
 *)

type t = {
    path: string;
    start_line: int32;
    end_line: int32;
    start_column: int32 option;
    end_column: int32 option;
    annotation_level: string option;
    title: string option;
    message: string option;
    raw_details: string option;
    blob_href: string;
} [@@deriving yojson { strict = false }, show ];;

(** Check Annotation *)
let create (path : string) (start_line : int32) (end_line : int32) (start_column : int32 option) (end_column : int32 option) (annotation_level : string option) (title : string option) (message : string option) (raw_details : string option) (blob_href : string) : t = {
    path = path;
    start_line = start_line;
    end_line = end_line;
    start_column = start_column;
    end_column = end_column;
    annotation_level = annotation_level;
    title = title;
    message = message;
    raw_details = raw_details;
    blob_href = blob_href;
}

