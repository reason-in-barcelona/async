(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The date of birth of this cardholder. *)
    dob: Any_ofissuing_cardholder_individual_dob.t option [@default None];
    (* The first name of this cardholder. *)
    first_name: string;
    (* The last name of this cardholder. *)
    last_name: string;
    (* Government-issued ID document for this cardholder. *)
    verification: Any_ofissuing_cardholder_verification.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (first_name : string) (last_name : string) : t = {
    dob = None;
    first_name = first_name;
    last_name = last_name;
    verification = None;
}

